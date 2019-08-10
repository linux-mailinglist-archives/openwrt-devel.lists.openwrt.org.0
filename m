Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA37D88D25
	for <lists+openwrt-devel@lfdr.de>; Sat, 10 Aug 2019 22:21:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ofDuy7NGNzsBLfGRlb9yRK8TpnrnW9xwAuQQOvi9GG4=; b=o8jscQcl6SCo97rO1IRg85lDf
	ZosNJcyaBkK8QJsqOz8pUkMiu0tmxCQA9JDCF6jNxDTBXGJ3GGjDFlVU2uVG1CP9/vNcQ1m8MbIdJ
	RH+WXr+0LRYgAJ1Lwx66oIUbYnSDOJ8PMRXNsAj0yjRzsO+iweU6bsjMgfcvqCDX/5VOaybFEI5sV
	9hXxsRD9cSSHIQlPejpr6tKq3zI5tGFXkW3ezyC/+AuMHo+N1FzGgFhSbyOQmSbbg9NMmYjL0fJGW
	/05cNIvvGiRXdRmq29YZqGdilc2bN78BPxiKeC9y6ptT3KcPzp574klQj8CY3b87EbT/bZBEqZ+/G
	jetpWgZlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwXrF-0000Zz-Db; Sat, 10 Aug 2019 20:20:57 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwXqu-0000Zc-7C
 for openwrt-devel@lists.openwrt.org; Sat, 10 Aug 2019 20:20:38 +0000
Received: from desktop ([188.193.174.123]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1N1gWU-1iKvOo0at6-0123KE; Sat, 10 Aug 2019 22:20:30 +0200
From: <mail@adrianschmutzler.de>
To: "'Birger Koblitz'" <mail@birger-koblitz.de>
References: <1d85f1b0-7cdb-68d6-3535-72666de254c3@birger-koblitz.de>
In-Reply-To: <1d85f1b0-7cdb-68d6-3535-72666de254c3@birger-koblitz.de>
Date: Sat, 10 Aug 2019 22:20:29 +0200
Message-ID: <01e901d54fb9$0e1c56e0$2a5504a0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQJIImTgqpVld/JhqOEe/G1Y6hA9nKYPJAqg
X-Provags-ID: V03:K1:scdOOrpzXyRq8VcdgCiqUPP7rEYM2BhVS1KhRxQJ8IrSuAkpIaQ
 fJrcsMl+b0dZ6C7pVxt19O/t0duRm/yemAcwAIkwFieBX5A0X72e/doSvhmB6iIpyhxlVLE
 +HGi3zxRUI8xevx8z2LFRlmnvwUJjtQ55N0dTgsPEbJBfznOI/u+PqL8xSX280RFjev9uGk
 g0SIAKjbZC9Avi4jVAL1A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:aFB6EfUqD64=:j6ytjiq1kLl+899lYyTLu3
 jwmJc43v7JxjDTJuoA7WV9SeXIQjkCuOp4evJHMG9myQduDCJVx7uoBIBmA1q06nH7nlmm/99
 R/gzhu7ve8yznhKorZ0/jIHbe6r0fF100a7UvhwQfNbEOI/j32S7FT0W8/PMsS+SkyWUGHMNz
 xyMSb42gE6dpVu7NAXyPe4QTpu6lmWUxMP3BLnZ7MqC/C4WjJjjjx40ALXiNBpBpL4/CKfH5w
 vXHHKKYCzucp/7nKb4O9nw/NaIPEf7A4FSxhckLEYPuIkd/PDirKewfIfBUdSfxYOg/iUPAnW
 Y6tNbTdnXuQHHpRLcdJyGualONYRVzRJBsETLeaFJpg3z1AevQJw37Akxa/MVpQJvFBxiP4zU
 Y9UAqBZ56Sd1ZLEE9hRlW6MKY7JludD5mhsUpMMMGi1QDZbzcQ8H98aDMkyNS/6+5QboPQCUM
 328YxwM5mRf2jwdA766v57DZoEO8LNXkQodQHOCCHHDzSQE4ewOLKNQqTJbSUJj9f9W8XvaQf
 KWgVVNrJhBArlWhCsX3q2ga/NLJIhmhE0ycZqaxUTWthrUqd+eyhkWR5H+cU+jWGLG37rPHFR
 eLcrS/Fvlz5ysOkM1EGNKeZvX7MCI0Ttde0JiFMGfhy97CeljKLdgbTxtHNdJKZvGRDnmxWNY
 i/VdTi3EycW4HB9XDiWxL5Ii5nDspHedtvjoOfBxDXr+JOcoK2ISR6FboNalaC7zs7jMR+bGe
 XhT63nh4ROwN5lip9L3J4KZ3N0nVzlFe4LQMUNRrK9UDromnpC04rRyfdw4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190810_132036_559678_DBE1731C 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: use gpio_hog instead of
 gpio-export
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============6250451828036202695=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============6250451828036202695==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=othqVyydKlacp3=-="

This is a multipart message in MIME format.

--=-=othqVyydKlacp3=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCj4gK8KgwqDCoCB1c2Igew0KPiArwqDCoMKgIMKgwqDCoCBncGlvLWhv
ZzsNCj4gK8KgwqDCoCDCoMKgwqAgbGluZS1uYW1lID0gInRwLWxpbms6cG93ZXI6
dXNiIjsNCj4gK8KgwqDCoCDCoMKgwqAgZ3Bpb3MgPSA8NiBHUElPX0FDVElWRV9I
SUdIPjsNCj4gK8KgwqDCoCDCoMKgwqAgb3V0cHV0LWhpZ2g7DQo+IMKgwqDCoMKg
IH07DQo+IMKgfTsNCg0KQXMgc3RhdGVkIGVhcmxpZXIsIEkgd291bGQgcHJlZmVy
IGNhbGxpbmcgdGhvc2UgYmxvY2tzIHVzYi1wb3dlciwgdXNiMS1wb3dlciwgZXRj
Li4NCg0KPiBkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L2F0aDc5L2R0cy9xY2E5
NTMxX3l1bmNvcmVfYTc3MC5kdHMNCj4gYi90YXJnZXQvbGludXgvYXRoNzkvZHRz
L3FjYTk1MzFfeXVuY29yZV9hNzcwLmR0cw0KPiBpbmRleCBkYTViNmRjN2RiLi4x
OGFkNjMwN2ExIDEwMDY0NA0KPiAtLS0gYS90YXJnZXQvbGludXgvYXRoNzkvZHRz
L3FjYTk1MzFfeXVuY29yZV9hNzcwLmR0cw0KPiArKysgYi90YXJnZXQvbGludXgv
YXRoNzkvZHRzL3FjYTk1MzFfeXVuY29yZV9hNzcwLmR0cw0KPiBAQCAtOCw3ICs4
LDcgQEANCj4gDQo+IMKgLyB7DQo+IMKgwqDCoMKgIG1vZGVsID0gIll1bkNvcmUg
QTc3MCI7DQo+IC3CoMKgwqAgY29tcGF0aWJsZSA9ICJ5dW5jb3JlLGE3NzAiLCAi
cWNhLHFjYTk1MzEiOw0KPiArwqDCoMKgIGNvbXBhdGlibGUgPSAieXVuY29yZSxh
NzcwIiwgInFjYSxxY2E5NTMzIjsNCg0KVGhpcyBzaG91bGQgYmUgcmVtb3ZlZC4N
Cg0KPiBkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L2F0aDc5L2R0cy9xY2E5NTYx
X3RwbGlua19hcmNoZXItYzV4LmR0c2kNCj4gYi90YXJnZXQvbGludXgvYXRoNzkv
ZHRzL3FjYTk1NjFfdHBsaW5rX2FyY2hlci1jNXguZHRzaQ0KPiBpbmRleCA2ZDMy
ZmEzZmM0Li4zNzhjODdjOWVlIDEwMDY0NA0KPiAtLS0gYS90YXJnZXQvbGludXgv
YXRoNzkvZHRzL3FjYTk1NjFfdHBsaW5rX2FyY2hlci1jNXguZHRzaQ0KPiArKysg
Yi90YXJnZXQvbGludXgvYXRoNzkvZHRzL3FjYTk1NjFfdHBsaW5rX2FyY2hlci1j
NXguZHRzaQ0KPiBAQCAtNTQsMjIgKzU0LDIzIEBADQo+IMKgwqDCoMKgIMKgwqDC
oCDCoMKgwqAgZ3Bpb3MgPSA8JmdwaW8gMjEgR1BJT19BQ1RJVkVfTE9XPjsNCj4g
wqDCoMKgwqAgwqDCoMKgIH07DQo+IMKgwqDCoMKgIH07DQo+ICt9Ow0KPiANCj4g
LcKgwqDCoCBncGlvLWV4cG9ydCB7DQo+IC3CoMKgwqAgwqDCoMKgIGNvbXBhdGli
bGUgPSAiZ3Bpby1leHBvcnQiOw0KPiAtDQo+IC3CoMKgwqAgwqDCoMKgIGdwaW9f
c2hpZnRfcmVnaXN0ZXJfb2Ugew0KPiAtwqDCoMKgIMKgwqDCoCDCoMKgwqAgZ3Bp
by1leHBvcnQsbmFtZSA9ICJ0cC1saW5rOm9lOnNyIjsNCj4gLcKgwqDCoCDCoMKg
wqAgwqDCoMKgIGdwaW8tZXhwb3J0LG91dHB1dCA9IDwwPjsNCj4gLcKgwqDCoCDC
oMKgwqAgwqDCoMKgIGdwaW9zID0gPCZncGlvIDE2IEdQSU9fQUNUSVZFX0hJR0g+
Ow0KPiAtwqDCoMKgIMKgwqDCoCB9Ow0KPiArJmdwaW8gew0KPiArwqDCoMKgIHN0
YXR1cyA9ICJva2F5IjsNCj4gDQo+IC3CoMKgwqAgwqDCoMKgIGdwaW9fc2hpZnRf
cmVnaXN0ZXJfcmVzZXQgew0KPiAtwqDCoMKgIMKgwqDCoCDCoMKgwqAgZ3Bpby1l
eHBvcnQsbmFtZSA9ICJ0cC1saW5rOnJlc2V0OnNyIjsNCj4gLcKgwqDCoCDCoMKg
wqAgwqDCoMKgIGdwaW8tZXhwb3J0LG91dHB1dCA9IDwxPjsNCj4gLcKgwqDCoCDC
oMKgwqAgwqDCoMKgIGdwaW9zID0gPCZncGlvIDE5IEdQSU9fQUNUSVZFX0hJR0g+
Ow0KPiAtwqDCoMKgIMKgwqDCoCB9Ow0KPiArwqDCoMKgIHNyIHsNCj4gK8KgwqDC
oCDCoMKgwqAgZ3Bpby1ob2c7DQo+ICvCoMKgwqAgwqDCoMKgIGxpbmUtbmFtZSA9
ICJ0cC1saW5rOm9lOnNyIjsNCj4gK8KgwqDCoCDCoMKgwqAgZ3Bpb3MgPSA8MTYg
R1BJT19BQ1RJVkVfSElHSD47DQo+ICvCoMKgwqAgwqDCoMKgIG91dHB1dC1sb3c7
DQo+ICvCoMKgwqAgfTsNCj4gDQo+ICvCoMKgwqAgc3Igew0KPiArwqDCoMKgIMKg
wqDCoCBncGlvLWhvZzsNCj4gK8KgwqDCoCDCoMKgwqAgbGluZS1uYW1lID0gInRw
LWxpbms6cmVzZXQ6c3IiOw0KPiArwqDCoMKgIMKgwqDCoCBncGlvcyA9IDwxOSBH
UElPX0FDVElWRV9ISUdIPjsNCj4gK8KgwqDCoCDCoMKgwqAgb3V0cHV0LWhpZ2g7
DQo+IMKgwqDCoMKgIH07DQoNClRob3NlIHR3byBzaG91bGQgaGF2ZSBkaWZmZXJl
bnQgbm9kZSBuYW1lcy4NCg0KPiBkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L2F0
aDc5L2R0cy9xY2E5NTYzX3RwbGlua19hcmNoZXItYzctdjQuZHRzDQo+IGIvdGFy
Z2V0L2xpbnV4L2F0aDc5L2R0cy9xY2E5NTYzX3RwbGlua19hcmNoZXItYzctdjQu
ZHRzDQo+IGluZGV4IGY0YWRkMmZlMzEuLmQ4OTJkMGU5NjAgMTAwNjQ0DQo+IC0t
LSBhL3RhcmdldC9saW51eC9hdGg3OS9kdHMvcWNhOTU2M190cGxpbmtfYXJjaGVy
LWM3LXY0LmR0cw0KPiArKysgYi90YXJnZXQvbGludXgvYXRoNzkvZHRzL3FjYTk1
NjNfdHBsaW5rX2FyY2hlci1jNy12NC5kdHMNCj4gQEAgLTQxLDIyICs0MSw2IEBA
DQo+IMKgwqDCoMKgIMKgwqDCoCB9Ow0KPiDCoMKgwqDCoCB9Ow0KPiANCj4gLcKg
wqDCoCBncGlvLWV4cG9ydCB7DQo+IC3CoMKgwqAgwqDCoMKgIGNvbXBhdGlibGUg
PSAiZ3Bpby1leHBvcnQiOw0KPiAtDQo+IC3CoMKgwqAgwqDCoMKgIGdwaW9fc2hp
ZnRfcmVnaXN0ZXJfb2Ugew0KPiAtwqDCoMKgIMKgwqDCoCDCoMKgwqAgZ3Bpby1l
eHBvcnQsbmFtZSA9ICJ0cC1saW5rOm9lOnNyIjsNCj4gLcKgwqDCoCDCoMKgwqAg
wqDCoMKgIGdwaW8tZXhwb3J0LG91dHB1dCA9IDwwPjsNCj4gLcKgwqDCoCDCoMKg
wqAgwqDCoMKgIGdwaW9zID0gPCZncGlvIDEgR1BJT19BQ1RJVkVfTE9XPjvCoMKg
wqAgLy8gNzRIQzU5NSAvT0UgKE91dHB1dA0KPiBFbmFibGUpDQo+IC3CoMKgwqAg
wqDCoMKgIH07DQo+IC0NCj4gLcKgwqDCoCDCoMKgwqAgZ3Bpb19zaGlmdF9yZWdp
c3Rlcl9yZXNldCB7DQo+IC3CoMKgwqAgwqDCoMKgIMKgwqDCoCBncGlvLWV4cG9y
dCxuYW1lID0gInRwLWxpbms6cmVzZXQ6c3IiOw0KPiAtwqDCoMKgIMKgwqDCoCDC
oMKgwqAgZ3Bpby1leHBvcnQsb3V0cHV0ID0gPDE+Ow0KPiAtwqDCoMKgIMKgwqDC
oCDCoMKgwqAgZ3Bpb3MgPSA8JmdwaW8gMjEgR1BJT19BQ1RJVkVfTE9XPjvCoMKg
wqAgLy8gNzRIQzU5NSAvU1JDTFIgKFNlcmlhbA0KPiBDbGVhcikNCj4gLcKgwqDC
oCDCoMKgwqAgfTsNCj4gLcKgwqDCoCB9Ow0KPiAtDQo+IMKgwqDCoMKgIGxlZHMg
ew0KPiDCoMKgwqDCoCDCoMKgwqAgY29tcGF0aWJsZSA9ICJncGlvLWxlZHMiOw0K
PiANCj4gQEAgLTE0OCwxNSArMTMyLDI5IEBADQo+IA0KPiDCoH07DQo+IA0KPiAt
JnBjaWUgew0KPiArJmdwaW8gew0KPiDCoMKgwqDCoCBzdGF0dXMgPSAib2theSI7
DQo+ICsNCj4gK8KgwqDCoCBzciB7DQo+ICvCoMKgwqAgwqDCoMKgIGdwaW8taG9n
Ow0KPiArwqDCoMKgIMKgwqDCoCBsaW5lLW5hbWUgPSAidHAtbGluazpvZTpzciI7
DQo+ICvCoMKgwqAgwqDCoMKgIGdwaW9zID0gPDEgR1BJT19BQ1RJVkVfTE9XPjsN
Cj4gK8KgwqDCoCDCoMKgwqAgb3V0cHV0LWxvdzsNCj4gK8KgwqDCoCB9Ow0KPiAr
DQo+ICvCoMKgwqAgc3Igew0KPiArwqDCoMKgIMKgwqDCoCBncGlvLWhvZzsNCj4g
K8KgwqDCoCDCoMKgwqAgbGluZS1uYW1lID0gInRwLWxpbms6cmVzZXQ6c3IiOw0K
PiArwqDCoMKgIMKgwqDCoCBncGlvcyA9IDwyMSBHUElPX0FDVElWRV9MT1c+Ow0K
PiArwqDCoMKgIMKgwqDCoCBvdXRwdXQtaGlnaDsNCj4gK8KgwqDCoCB9Ow0KPiDC
oH07DQoNClNhbWUgaGVyZS4NCg0KUmVzdCBsb29rcyBnb29kLCBJIGhhdmVuJ3Qg
Y2hlY2tlZCBmb3IgZHVwbGljYXRlICZncGlvIGRlZmluaXRpb25zICh5b3Ugc2Vl
bSB0byBoYXZlIGFkZHJlc3NlZCBzb21lKS4NCg0KQmVzdA0KDQpBZHJpYW4=

--=-=othqVyydKlacp3=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1PJwkACgkQoNyKO7qx
AnAdExAApwlaCce/lk4YDS2NhXH0gFji8Xfhu/tIyx8XT40q7jwAi9teuDVYDC6F
U1Ax/d/s5/6ZOkLoEPahwbIk2mZ2ViaXytePsC7l14dIHwRtpJf12wzvWwkowNHr
bmlYkhMoCwC/i6OLPS2IY0NaUCr6DAaQmGdimqjHB/Kb3tT4RwAqyp3TDxQtkvyI
+HFB2DvBRpyyESOBYobx2d9V/UcSlT1tQ6Bjn8DsQe2cHCEwb0MfvUiNCEHPayBo
a/l9j5DgF0Y5hUi1OCZeNxL+CI7s5iOILLhupn87/H7XeBgROB7uvxC7goIWaqfq
8oLB1fUDiKkJZ6mO/EIhiDuvTPPWvp0Tu0FCSRTSVfDYkdrnFKsermMIIIDdAfuP
0E/kRHXhgcCVmZh53Whz8Qc1LYqa3v0KKOW3o3XKRxLulqtQXuo5N9E3DIBGfziv
k9dWQxhTnzeZsRW5tHZZ3Xy0/ZuMMPxeVMrAJ3FoPt+SCpnNvoXxRyOmiOMRCr2K
RS4q5Yeb84Gk9xN+hjciP8g4ODAtL+JtR3peGlnbWgDngRBRc0lJQywXjEvYMpUe
Xzx/bHwZXtP4AYKmcUrHFKRtmBesikalOjZbnVlyDsH5nECYUnAe3hyZy0GyaiVa
H6QkPW4Dfr0lMjKReYH6xuJc+kvALv2pUNPAZp5LFz4rbNhWsVA=
=VUIv
-----END PGP SIGNATURE-----


--=-=othqVyydKlacp3=-=--



--===============6250451828036202695==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6250451828036202695==--


