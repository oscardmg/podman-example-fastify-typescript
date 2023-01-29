import Fastify from 'fastify';

const server = Fastify({
  logger: true,
});

server.get('/healthcheck', async () => {
  return {
    status: 'OK',
  };
});

async function main() {
  try {
    const address = '0.0.0.0';
    await server.listen({
      port: 3000,
      host: address,
    });
    server.log.info(`server listening on ${address}`);
  } catch (e) {
    server.log.error(e);
    process.exit(1);
  }
}

main();
