import { Router } from 'express';
import healthRoutes from './health';

const routes = Router();

routes.use('/', healthRoutes);

export default routes;
