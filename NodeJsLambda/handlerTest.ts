import * as mocha from 'mocha';
import * as chai from 'chai';
import { APIGatewayEvent, Handler, Callback, Context } from 'aws-lambda';
import {hello} from './handler';

const expect = chai.expect;
const should = chai.should();

describe("handler", () => {
    describe("hello", () => {
        it("should return helloworld message", () => {
            hello(null,null, (error : Error, result : any) => {
                expect(error).to.be.null;
                result.body.should.equal('{"message":"Hello world!","input":null}');
            });
        });
    });
});