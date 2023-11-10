import { Module } from "@nestjs/common";
import { AppController } from "./app.controller";
import { AppService } from "./app.service";
import { ConfigModule } from "@nestjs/config";
import { validate } from "./config/env.validation";
import configuration from "./config/configuration";

@Module({
  imports: [ConfigModule.forRoot({ validate, isGlobal: true, load: [configuration] })],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
