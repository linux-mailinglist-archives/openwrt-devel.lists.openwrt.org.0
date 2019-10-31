Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A48AEAB7C
	for <lists+openwrt-devel@lfdr.de>; Thu, 31 Oct 2019 09:21:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Message-ID:Mime-Version:References:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=E0TvjVBZL1PDfvKq1ZcgN8uEJn5WYwUalvWBxE3c33A=; b=cPTLWkDbrvXRXe
	VOWW78CcBXnPcvYyxSOkdTUj3TcSYcb4xhJ0JYaSZBteEJE0S8p7o9LGgVCpV/MXPgS1LUQCizw1g
	9I2qvAquzuAEyLk4KW8aZjUCF6lDZMAbH7lamgWmZzSJ4bXEO9N8iygZCNlI391rmXip8D7E37PZs
	8hrtHd8DceL72FhAKKtPcPVOgHx3zJ+0uaW+R8H0QwhuQOixmqA98/rPuTSBhu9G/GHR3GKAT0t2G
	/stVGH1kq6kUTbT7PAOq5ROgTa1ZQWP0puDuOsUoeeQZ6hK15JmrpB9sUUSO7GLFReqgVVEA34Dgg
	OgEqWvAIuHXRntzOAJJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ5i9-0002i4-Ll; Thu, 31 Oct 2019 08:21:41 +0000
Received: from smtpbgsg2.qq.com ([54.254.200.128])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ5hy-0002gY-DZ
 for openwrt-devel@lists.openwrt.org; Thu, 31 Oct 2019 08:21:35 +0000
X-QQ-mid: bizesmtp26t1572509998tay7na6q
Received: from PC-daxiong (unknown [114.241.221.120])
 by esmtp10.qq.com (ESMTP) with 
 id ; Thu, 31 Oct 2019 16:19:57 +0800 (CST)
X-QQ-SSF: 00400000002000S0II40B00B0000000
X-QQ-FEAT: a2sbnTq7b+XwHOhJFssaQTdlYzrBpaJuDQTaTCin/AGHePWPmQgKhJS89+uC7
 PGgR3zxvFY4UgJabdooaFQUyrx/ZJATU848IKLBEqZcr64m11MNRscTomVlVdFIH3WB0kf0
 yV1Pqnu5f0AZUSatj8UlmsU12JGVzYZsyoUedpIDa/me7uD3f1Rl71UCZ/BwfAIc4D7NFPd
 lJV/s0A4GyfWL+CKZUSLFzr1dHx3jEMblbDGkLlqnhIr7y8O47XX1zx944quuE/a4F2b9MU
 R0kz+YfpMgL6JPyEhqzin/QxtKefR2utyQFd1SuxhkIyft26lQlBLAzJ0Fcw4Ee2BJ9Cq8p
 D3CTeuS895MmvVRxOAypFVQ5g0v8mpuZnZLFqa9
X-QQ-GoodBg: 2
Date: Thu, 31 Oct 2019 16:19:53 +0800
From: =?UTF-8?B?5aSn6ZuE?= <lxliu@ikuai8.com>
To: nbd <nbd@nbd.name>, "Hauke Mehrtens" <hauke@hauke-m.de>, 
 openwrt-devel <openwrt-devel@lists.openwrt.org>
References: <1572430479-8691-1-git-send-email-lxliu@ikuai8.com>, 
 <b41d9076-a20e-8ca3-e4b4-f5f2c39d0485@hauke-m.de>, 
 <2019103109465717351619@ikuai8.com>, 
 <d5ad2cb7-4542-f4a4-4024-bd6ffb93c1be@nbd.name>
X-Priority: 3
X-Has-Attach: no
X-Mailer: Foxmail 7.2.9.156[cn]
Mime-Version: 1.0
Message-ID: <2019103116195306162923@ikuai8.com>+B09C58522714EC01
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:ikuai8.com:qybgforeign:qybgforeign7
X-QQ-Bgrelay: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_012131_170928_CA505B51 
X-CRM114-Status: GOOD (  27.04  )
X-Spam-Score: 1.9 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.254.200.128 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: ikuai8.com]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: ikuai8.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 1.2 INVALID_MSGID          Message-Id is not valid, according to RFC 2822
Subject: Re: [OpenWrt-Devel] [PATCH-19.07] build: fix module strip invalid
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
Content-Type: multipart/mixed; boundary="===============2542784777221154160=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.

--===============2542784777221154160==
Content-Type: multipart/alternative;
	boundary="----=_001_NextPart500304512217_=----"

This is a multi-part message in MIME format.

------=_001_NextPart500304512217_=----
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: base64

SGksDQoNCiAgICBJIGNvbXBpbGUgdGhlIGtlcm5lbCBvcHRpb25zLCB3aXRob3V0IGFueSBzcGVj
aWFsIG9wZW4gdGhlIERFQlVHIG9wdGlvbnMuDQogICAgQnV0IHRoZSBjb21waWxlZCBLTyBtb2R1
bGUgc2l6ZSBpcyB2ZXJ5IGJpZy4NCg0KDQogDQpGcm9tOiBGZWxpeCBGaWV0a2F1DQpEYXRlOiAy
MDE5LTEwLTMxIDE1OjMxDQpUbzog5aSn6ZuEOyBIYXVrZSBNZWhydGVuczsgb3BlbndydC1kZXZl
bA0KU3ViamVjdDogUmU6IFtPcGVuV3J0LURldmVsXSBbUEFUQ0gtMTkuMDddIGJ1aWxkOiBmaXgg
bW9kdWxlIHN0cmlwIGludmFsaWQNCkhpLA0KIA0KSSBkb24ndCB0aGluayB0aGlzIHBhdGNoIGlz
IGNvcnJlY3QuIFRoZSBwdXJwb3NlIG9mIHRoZSBleGlzdGluZw0KMjA0LW1vZHVsZV9zdHJpcC5w
YXRjaCBpcyBjb21wbGV0ZWx5IGRpZmZlcmVudCBmcm9tIHRoZSBzdHJpcHBpbmcNCmJlaGF2aW9y
IHRoYXQgeW91IGludHJvZHVjZSwgYW5kIHlvdSBoYXZlbid0IGRlc2NyaWJlZCB3aGF0IGlzc3Vl
cyB5b3UNCmhhdmUgd2l0aCB0aGUgZXhpc3RpbmcgY29kZS4NCkFsc28sIHJ1bm5pbmcgc3RyaXAg
aW5zaWRlIHRoZSBrZXJuZWwgYnVpbGQgc3lzdGVtIGlzIGEgYmFkIGlkZWEsDQpiZWNhdXNlIHRo
ZSBidWlsZCBzeXN0ZW0gYWxyZWFkeSBzdHJpcHMgYWxsIGtlcm5lbCBtb2R1bGVzIHdoZW4gcGFj
a2FnaW5nLg0KVGhlIC5rbyBmaWxlcyBpbnNpZGUgdGhlIGtlcm5lbCB0cmVlIHNob3VsZCBzdGls
bCBjb250YWluIGRlYnVnIHN5bWJvbHMsDQpiZWNhdXNlIHRoYXQgaXMgbmVlZGVkIGZvciBkZWJ1
Z2dpbmcuDQogDQotIEZlbGl4DQogDQpPbiAyMDE5LTEwLTMxIDAyOjQ2LCDlpKfpm4Qgd3JvdGU6
DQo+IEJ1aWxkIGZpbGUgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2UxMDAwZS5r
byBzaXplIGFib3V0IDkyMEtCDQo+IGZvciBvbGQgUEFUQ0guDQo+IEFmdGVyIHRoZSBuZXcgcGF0
Y2ggaXMgYWJvdXQgMTc3S0INCj4gDQo+ICAgICAqRnJvbToqIEhhdWtlIE1laHJ0ZW5zIDxtYWls
dG86aGF1a2VAaGF1a2UtbS5kZT4NCj4gICAgICpEYXRlOiogMjAxOS0xMC0zMCAyMzo0Nw0KPiAg
ICAgKlRvOiogZGF4aW9uZyA8bWFpbHRvOmx4bGl1QGlrdWFpOC5jb20+OyBvcGVud3J0LWRldmVs
DQo+ICAgICA8bWFpbHRvOm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmc+DQo+ICAgICAq
U3ViamVjdDoqIFJlOiBbT3BlbldydC1EZXZlbF0gW1BBVENILTE5LjA3XSBidWlsZDogZml4IG1v
ZHVsZSBzdHJpcA0KPiAgICAgaW52YWxpZA0KPiAgICAgT24gMTAvMzAvMTkgMTE6MTQgQU0sIGRh
eGlvbmcgd3JvdGU6DQo+ICAgICA+IEN1cnJlbnQgbW9kcG9zdCBjYW5ub3QgcmVkdWNlIHRoZSBt
b2R1bGUgc2l6ZS4NCj4gICAgID4NCj4gICAgID4gVXNlICQoU1RSSVApIGNvbW1hbmQgdG8gcmVw
bGFjZSB0aGUgbW9kcG9zdCBwYXRjaCwNCj4gICAgID4gSSB0aGluayB0byBiZSBjb21wYXRpYmls
aXR5IHdpbGwgYmUgYmV0dGVyLg0KPiAgICAgPg0KPiAgICAgPiBTaWduZWQtb2ZmLWJ5OiBkYXhp
b25nIDxseGxpdUBpa3VhaTguY29tPg0KPiAgICAgIA0KPiAgICAgUGxlYXNlIGJhc2UgdGhpcyBh
Z2FpbnN0IG1hc3RlciwgdGhlbiB3ZSBjYW4gYmFja3BvcnQgaXQgdG8gMTkuMDcuDQo+ICAgICAg
DQo+ICAgICBDb3VsZCB5b3UgcGxlYXNlIGVsYWJvcmF0ZSBhIGxpdHRsZSBiaXQgbW9yZSBob3cg
bW9kdWxlLXN0cmlwIHByb3ZpZGVzDQo+ICAgICBiZXR0ZXIgcmVzdWx0cyB0aGFuIHRoZSBwcmV2
aW91cyBwYXRjaD8gSXQgd291bGQgYmUgbmljZSBpZiB5b3UgY291bGQNCj4gICAgIGFsc28gcHJv
dmlkZSBzb21lIG51bWJlcnMgdG8gY29tcGFyZSB0aGUgcHJldmlvdXMgc2l6ZSBhbmQgdGhlDQo+
ICAgICBjdXJyZW50IHNpemUuDQo+ICAgICAgDQo+ICAgICBXb3VsZCBpdCBtYWtlIHNlbnNlIHRv
IGRvIGJvdGggdG9nZXRoZXIsIHdoYXQgd2FzIGRvbmUgaW4gdGhpcyBwYXRjaA0KPiAgICAgYmVm
b3JlIGFuZCBhZnRlciB5b3VyIGNoYW5nZT8NCj4gICAgICANCj4gICAgIEhhdWtlDQo+ICAgICAg
DQo+ICAgICA+IC0tLQ0KPiAgICAgPiAgLi4uL2xpbnV4L2dlbmVyaWMvaGFjay00LjE0LzIwNC1t
b2R1bGVfc3RyaXAucGF0Y2ggfCAyMTYNCj4gICAgICsrKy0tLS0tLS0tLS0tLS0tLS0tLQ0KPiAg
ICAgPiAgMSBmaWxlIGNoYW5nZWQsIDI0IGluc2VydGlvbnMoKyksIDE5MiBkZWxldGlvbnMoLSkN
Cj4gICAgID4NCj4gICAgID4gZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9nZW5lcmljL2hhY2st
NC4xNC8yMDQtbW9kdWxlX3N0cmlwLnBhdGNoDQo+ICAgICBiL3RhcmdldC9saW51eC9nZW5lcmlj
L2hhY2stNC4xNC8yMDQtbW9kdWxlX3N0cmlwLnBhdGNoDQo+ICAgICA+IGluZGV4IGQ4NDdhZGYu
LmMyMmE1MDcgMTAwNjQ0DQo+ICAgICA+IC0tLSBhL3RhcmdldC9saW51eC9nZW5lcmljL2hhY2st
NC4xNC8yMDQtbW9kdWxlX3N0cmlwLnBhdGNoDQo+ICAgICA+ICsrKyBiL3RhcmdldC9saW51eC9n
ZW5lcmljL2hhY2stNC4xNC8yMDQtbW9kdWxlX3N0cmlwLnBhdGNoDQo+ICAgICA+IEBAIC0xLDEw
NCArMSw4IEBADQo+ICAgICA+IC1Gcm9tIGE3NzlhNDgyZmI5YjlmOGZjZGY4YjI1MTljNzg5YjRi
OWJiNWRkMDUgTW9uIFNlcCAxNyAwMDowMDowMA0KPiAgICAgMjAwMQ0KPiAgICAgPiAtRnJvbTog
RmVsaXggRmlldGthdSA8bmJkQG5iZC5uYW1lPg0KPiAgICAgPiAtRGF0ZTogRnJpLCA3IEp1bCAy
MDE3IDE2OjU2OjQ4ICswMjAwDQo+ICAgICA+IC1TdWJqZWN0OiBidWlsZDogYWRkIGEgaGFjayBm
b3IgcmVtb3Zpbmcgbm9uLWVzc2VudGlhbCBtb2R1bGUgaW5mbw0KPiAgICAgPiAtDQo+ICAgICA+
IC1TaWduZWQtb2ZmLWJ5OiBGZWxpeCBGaWV0a2F1IDxuYmRAbmJkLm5hbWU+DQo+ICAgICA+IC0t
LS0NCj4gICAgID4gLSBpbmNsdWRlL2xpbnV4L21vZHVsZS5oICAgICAgfCAxMyArKysrKysrKy0t
LS0tDQo+ICAgICA+IC0gaW5jbHVkZS9saW51eC9tb2R1bGVwYXJhbS5oIHwgMTUgKysrKysrKysr
KysrLS0tDQo+ICAgICA+IC0gaW5pdC9LY29uZmlnICAgICAgICAgICAgICAgIHwgIDcgKysrKysr
Kw0KPiAgICAgPiAtIGtlcm5lbC9tb2R1bGUuYyAgICAgICAgICAgICB8ICA1ICsrKystDQo+ICAg
ICA+IC0gc2NyaXB0cy9tb2QvbW9kcG9zdC5jICAgICAgIHwgMTIgKysrKysrKysrKysrDQo+ICAg
ICA+IC0gNSBmaWxlcyBjaGFuZ2VkLCA0MyBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQ0K
PiAgICAgPiAtDQo+ICAgICA+IC0tLS0gYS9pbmNsdWRlL2xpbnV4L21vZHVsZS5oDQo+ICAgICA+
IC0rKysgYi9pbmNsdWRlL2xpbnV4L21vZHVsZS5oDQo+ICAgICA+IC1AQCAtMTU4LDYgKzE1OCw3
IEBAIGV4dGVybiB2b2lkIGNsZWFudXBfbW9kdWxlKHZvaWQpOw0KPiAgICAgPiAtDQo+ICAgICA+
IC0gLyogR2VuZXJpYyBpbmZvIG9mIGZvcm0gdGFnID0gImluZm8iICovDQo+ICAgICA+IC0gI2Rl
ZmluZSBNT0RVTEVfSU5GTyh0YWcsIGluZm8pIF9fTU9EVUxFX0lORk8odGFnLCB0YWcsIGluZm8p
DQo+ICAgICA+IC0rI2RlZmluZSBNT0RVTEVfSU5GT19TVFJJUCh0YWcsIGluZm8pIF9fTU9EVUxF
X0lORk9fU1RSSVAodGFnLA0KPiAgICAgdGFnLCBpbmZvKQ0KPiAgICAgPiAtDQo+ICAgICA+IC0g
LyogRm9yIHVzZXJzcGFjZTogeW91IGNhbiBhbHNvIGNhbGwgbWUuLi4gKi8NCj4gICAgID4gLSAj
ZGVmaW5lIE1PRFVMRV9BTElBUyhfYWxpYXMpIE1PRFVMRV9JTkZPKGFsaWFzLCBfYWxpYXMpDQo+
ICAgICA+IC1AQCAtMjAxLDEyICsyMDIsMTIgQEAgZXh0ZXJuIHZvaWQgY2xlYW51cF9tb2R1bGUo
dm9pZCk7DQo+ICAgICA+IC0gICogQXV0aG9yKHMpLCB1c2UgIk5hbWUgPGVtYWlsPiIgb3IganVz
dCAiTmFtZSIsIGZvciBtdWx0aXBsZQ0KPiAgICAgPiAtICAqIGF1dGhvcnMgdXNlIG11bHRpcGxl
IE1PRFVMRV9BVVRIT1IoKSBzdGF0ZW1lbnRzL2xpbmVzLg0KPiAgICAgPiAtICAqLw0KPiAgICAg
PiAtLSNkZWZpbmUgTU9EVUxFX0FVVEhPUihfYXV0aG9yKSBNT0RVTEVfSU5GTyhhdXRob3IsIF9h
dXRob3IpDQo+ICAgICA+IC0rI2RlZmluZSBNT0RVTEVfQVVUSE9SKF9hdXRob3IpIE1PRFVMRV9J
TkZPX1NUUklQKGF1dGhvciwgX2F1dGhvcikNCj4gICAgID4gLQ0KPiAgICAgPiAtIC8qIFdoYXQg
eW91ciBtb2R1bGUgZG9lcy4gKi8NCj4gICAgID4gLS0jZGVmaW5lIE1PRFVMRV9ERVNDUklQVElP
TihfZGVzY3JpcHRpb24pDQo+ICAgICBNT0RVTEVfSU5GTyhkZXNjcmlwdGlvbiwgX2Rlc2NyaXB0
aW9uKQ0KPiAgICAgPiAtKyNkZWZpbmUgTU9EVUxFX0RFU0NSSVBUSU9OKF9kZXNjcmlwdGlvbikN
Cj4gICAgIE1PRFVMRV9JTkZPX1NUUklQKGRlc2NyaXB0aW9uLCBfZGVzY3JpcHRpb24pDQo+ICAg
ICA+IC0NCj4gICAgID4gLS0jaWZkZWYgTU9EVUxFDQo+ICAgICA+IC0rI2lmIGRlZmluZWQoTU9E
VUxFKSAmJiAhZGVmaW5lZChDT05GSUdfTU9EVUxFX1NUUklQUEVEKQ0KPiAgICAgPiAtIC8qIENy
ZWF0ZXMgYW4gYWxpYXMgc28gZmlsZTJhbGlhcy5jIGNhbiBmaW5kIGRldmljZSB0YWJsZS4gKi8N
Cj4gICAgID4gLSAjZGVmaW5lIE1PRFVMRV9ERVZJQ0VfVEFCTEUodHlwZSwgbmFtZSkgXA0KPiAg
ICAgPiAtIGV4dGVybiB0eXBlb2YobmFtZSkgX19tb2RfIyN0eXBlIyNfXyMjbmFtZSMjX2Rldmlj
ZV90YWJsZSBcDQo+ICAgICA+IC1AQCAtMjMzLDcgKzIzNCw5IEBAIGV4dGVybiB0eXBlb2YobmFt
ZSkgX19tb2RfIyN0eXBlIyNfXyMjbmENCj4gICAgID4gLSAgKi8NCj4gICAgID4gLQ0KPiAgICAg
PiAtICNpZiBkZWZpbmVkKE1PRFVMRSkgfHwgIWRlZmluZWQoQ09ORklHX1NZU0ZTKQ0KPiAgICAg
PiAtLSNkZWZpbmUgTU9EVUxFX1ZFUlNJT04oX3ZlcnNpb24pIE1PRFVMRV9JTkZPKHZlcnNpb24s
IF92ZXJzaW9uKQ0KPiAgICAgPiAtKyNkZWZpbmUgTU9EVUxFX1ZFUlNJT04oX3ZlcnNpb24pIE1P
RFVMRV9JTkZPX1NUUklQKHZlcnNpb24sDQo+ICAgICBfdmVyc2lvbikNCj4gICAgID4gLSsjZWxp
ZiBkZWZpbmVkKENPTkZJR19NT0RVTEVfU1RSSVBQRUQpDQo+ICAgICA+IC0rI2RlZmluZSBNT0RV
TEVfVkVSU0lPTihfdmVyc2lvbikgX19NT0RVTEVfSU5GT19ESVNBQkxFRCh2ZXJzaW9uKQ0KPiAg
ICAgPiAtICNlbHNlDQo+ICAgICA+IC0gI2RlZmluZSBNT0RVTEVfVkVSU0lPTihfdmVyc2lvbikg
XA0KPiAgICAgPiAtIHN0YXRpYyBzdHJ1Y3QgbW9kdWxlX3ZlcnNpb25fYXR0cmlidXRlIF9fX21v
ZHZlcl9hdHRyID0geyBcDQo+ICAgICA+IC1AQCAtMjU1LDcgKzI1OCw3IEBAIGV4dGVybiB0eXBl
b2YobmFtZSkgX19tb2RfIyN0eXBlIyNfXyMjbmENCj4gICAgID4gLSAvKiBPcHRpb25hbCBmaXJt
d2FyZSBmaWxlIChvciBmaWxlcykgbmVlZGVkIGJ5IHRoZSBtb2R1bGUNCj4gICAgID4gLSAgKiBm
b3JtYXQgaXMgc2ltcGx5IGZpcm13YXJlIGZpbGUgbmFtZS4gIE11bHRpcGxlIGZpcm13YXJlDQo+
ICAgICA+IC0gICogZmlsZXMgcmVxdWlyZSBtdWx0aXBsZSBNT0RVTEVfRklSTVdBUkUoKSBzcGVj
aWZpZXJzICovDQo+ICAgICA+IC0tI2RlZmluZSBNT0RVTEVfRklSTVdBUkUoX2Zpcm13YXJlKSBN
T0RVTEVfSU5GTyhmaXJtd2FyZSwgX2Zpcm13YXJlKQ0KPiAgICAgPiAtKyNkZWZpbmUgTU9EVUxF
X0ZJUk1XQVJFKF9maXJtd2FyZSkgTU9EVUxFX0lORk9fU1RSSVAoZmlybXdhcmUsDQo+ICAgICBf
ZmlybXdhcmUpDQo+ICAgICA+IC0NCj4gICAgID4gLSBzdHJ1Y3Qgbm90aWZpZXJfYmxvY2s7DQo+
ICAgICA+IC0NCj4gICAgID4gLS0tLSBhL2luY2x1ZGUvbGludXgvbW9kdWxlcGFyYW0uaA0KPiAg
ICAgPiAtKysrIGIvaW5jbHVkZS9saW51eC9tb2R1bGVwYXJhbS5oDQo+ICAgICA+IC1AQCAtMTcs
NiArMTcsMTYgQEANCj4gICAgID4gLSAvKiBDaG9zZW4gc28gdGhhdCBzdHJ1Y3RzIHdpdGggYW4g
dW5zaWduZWQgbG9uZyBsaW5lIHVwLiAqLw0KPiAgICAgPiAtICNkZWZpbmUgTUFYX1BBUkFNX1BS
RUZJWF9MRU4gKDY0IC0gc2l6ZW9mKHVuc2lnbmVkIGxvbmcpKQ0KPiAgICAgPiAtDQo+ICAgICA+
IC0rLyogVGhpcyBzdHJ1Y3QgaXMgaGVyZSBmb3Igc3ludGFjdGljIGNvaGVyZW5jeSwgaXQgaXMg
bm90IHVzZWQgKi8NCj4gICAgID4gLSsjZGVmaW5lIF9fTU9EVUxFX0lORk9fRElTQUJMRUQobmFt
ZSkgICBcDQo+ICAgICA+IC0rICBzdHJ1Y3QgX19VTklRVUVfSUQobmFtZSkge30NCj4gICAgID4g
LSsNCj4gICAgID4gLSsjaWZkZWYgQ09ORklHX01PRFVMRV9TVFJJUFBFRA0KPiAgICAgPiAtKyNk
ZWZpbmUgX19NT0RVTEVfSU5GT19TVFJJUCh0YWcsIG5hbWUsIGluZm8pDQo+ICAgICBfX01PRFVM
RV9JTkZPX0RJU0FCTEVEKG5hbWUpDQo+ICAgICA+IC0rI2Vsc2UNCj4gICAgID4gLSsjZGVmaW5l
IF9fTU9EVUxFX0lORk9fU1RSSVAodGFnLCBuYW1lLCBpbmZvKSBfX01PRFVMRV9JTkZPKHRhZywN
Cj4gICAgIG5hbWUsIGluZm8pDQo+ICAgICA+IC0rI2VuZGlmDQo+ICAgICA+IC0rDQo+ICAgICA+
IC0gI2lmZGVmIE1PRFVMRQ0KPiAgICAgPiAtICNkZWZpbmUgX19NT0RVTEVfSU5GTyh0YWcsIG5h
bWUsIGluZm8pICAgXA0KPiAgICAgPiAtIHN0YXRpYyBjb25zdCBjaGFyIF9fVU5JUVVFX0lEKG5h
bWUpW10gICBcDQo+ICAgICA+IC1AQCAtMjQsOCArMzQsNyBAQCBzdGF0aWMgY29uc3QgY2hhciBf
X1VOSVFVRV9JRChuYW1lKVtdDQo+ICAgICA+IC0gICA9IF9fc3RyaW5naWZ5KHRhZykgIj0iIGlu
Zm8NCj4gICAgID4gLSAjZWxzZSAgLyogIU1PRFVMRSAqLw0KPiAgICAgPiAtIC8qIFRoaXMgc3Ry
dWN0IGlzIGhlcmUgZm9yIHN5bnRhY3RpYyBjb2hlcmVuY3ksIGl0IGlzIG5vdCB1c2VkICovDQo+
ICAgICA+IC0tI2RlZmluZSBfX01PRFVMRV9JTkZPKHRhZywgbmFtZSwgaW5mbykgICBcDQo+ICAg
ICA+IC0tICBzdHJ1Y3QgX19VTklRVUVfSUQobmFtZSkge30NCj4gICAgID4gLSsjZGVmaW5lIF9f
TU9EVUxFX0lORk8odGFnLCBuYW1lLCBpbmZvKSBfX01PRFVMRV9JTkZPX0RJU0FCTEVEKG5hbWUp
DQo+ICAgICA+IC0gI2VuZGlmDQo+ICAgICA+IC0gI2RlZmluZSBfX01PRFVMRV9QQVJNX1RZUEUo
bmFtZSwgX3R5cGUpICAgXA0KPiAgICAgPiAtICAgX19NT0RVTEVfSU5GTyhwYXJtdHlwZSwgbmFt
ZSMjdHlwZSwgI25hbWUgIjoiIF90eXBlKQ0KPiAgICAgPiAtQEAgLTMzLDcgKzQyLDcgQEAgc3Rh
dGljIGNvbnN0IGNoYXIgX19VTklRVUVfSUQobmFtZSlbXQ0KPiAgICAgPiAtIC8qIE9uZSBmb3Ig
ZWFjaCBwYXJhbWV0ZXIsIGRlc2NyaWJpbmcgaG93IHRvIHVzZSBpdC4gIFNvbWUgZmlsZXMgZG8N
Cj4gICAgID4gLSAgICBtdWx0aXBsZSBvZiB0aGVzZSBwZXIgbGluZSwgc28gY2FuJ3QganVzdCB1
c2UgTU9EVUxFX0lORk8uICovDQo+ICAgICA+IC0gI2RlZmluZSBNT0RVTEVfUEFSTV9ERVNDKF9w
YXJtLCBkZXNjKSBcDQo+ICAgICA+IC0tIF9fTU9EVUxFX0lORk8ocGFybSwgX3Bhcm0sICNfcGFy
bSAiOiIgZGVzYykNCj4gICAgID4gLSsgX19NT0RVTEVfSU5GT19TVFJJUChwYXJtLCBfcGFybSwg
I19wYXJtICI6IiBkZXNjKQ0KPiAgICAgPiAtDQo+ICAgICA+IC0gc3RydWN0IGtlcm5lbF9wYXJh
bTsNCj4gICAgID4gLQ0KPiAgICAgPiArZGlmZiAtLWdpdCBhL2luaXQvS2NvbmZpZyBiL2luaXQv
S2NvbmZpZw0KPiAgICAgPiAraW5kZXggNDYwNzUzMi4uY2JhMGY4MSAxMDA2NDQNCj4gICAgID4g
IC0tLSBhL2luaXQvS2NvbmZpZw0KPiAgICAgPiAgKysrIGIvaW5pdC9LY29uZmlnDQo+ICAgICA+
IC1AQCAtMTkwMyw2ICsxOTAzLDEzIEBAIGNvbmZpZyBUUklNX1VOVVNFRF9LU1lNUw0KPiAgICAg
PiArQEAgLTE4ODMsNiArMTg4MywxMyBAQCBjb25maWcgVFJJTV9VTlVTRURfS1NZTVMNCj4gICAg
ID4gIA0KPiAgICAgPiAgICAgSWYgdW5zdXJlLCBvciBpZiB5b3UgbmVlZCB0byBidWlsZCBvdXQt
b2YtdHJlZSBtb2R1bGVzLCBzYXkgTi4NCj4gICAgID4gIA0KPiAgICAgPiBAQCAtMTEyLDk3ICsx
NiwyNSBAQCBTaWduZWQtb2ZmLWJ5OiBGZWxpeCBGaWV0a2F1IDxuYmRAbmJkLm5hbWU+DQo+ICAg
ICA+ICAgZW5kaWYgIyBNT0RVTEVTDQo+ICAgICA+ICANCj4gICAgID4gICBjb25maWcgTU9EVUxF
U19UUkVFX0xPT0tVUA0KPiAgICAgPiAtLS0tIGEva2VybmVsL21vZHVsZS5jDQo+ICAgICA+IC0r
KysgYi9rZXJuZWwvbW9kdWxlLmMNCj4gICAgID4gLUBAIC0zMDIwLDkgKzMwMjAsMTEgQEAgc3Rh
dGljIHN0cnVjdCBtb2R1bGUgKnNldHVwX2xvYWRfaW5mbyhzdA0KPiAgICAgPiAtDQo+ICAgICA+
IC0gc3RhdGljIGludCBjaGVja19tb2RpbmZvKHN0cnVjdCBtb2R1bGUgKm1vZCwgc3RydWN0IGxv
YWRfaW5mbw0KPiAgICAgKmluZm8sIGludCBmbGFncykNCj4gICAgID4gLSB7DQo+ICAgICA+IC0t
IGNvbnN0IGNoYXIgKm1vZG1hZ2ljID0gZ2V0X21vZGluZm8oaW5mbywgInZlcm1hZ2ljIik7DQo+
ICAgICA+IC0gaW50IGVycjsNCj4gICAgID4gLQ0KPiAgICAgPiAtKyNpZm5kZWYgQ09ORklHX01P
RFVMRV9TVFJJUFBFRA0KPiAgICAgPiAtKyBjb25zdCBjaGFyICptb2RtYWdpYyA9IGdldF9tb2Rp
bmZvKGluZm8sICJ2ZXJtYWdpYyIpOw0KPiAgICAgPiArZGlmZiAtLWdpdCBhL3NjcmlwdHMvS2J1
aWxkLmluY2x1ZGUgYi9zY3JpcHRzL0tidWlsZC5pbmNsdWRlDQo+ICAgICA+ICtpbmRleCBhMzNm
YTFhLi4zNGIzNGUwIDEwMDY0NA0KPiAgICAgPiArLS0tIGEvc2NyaXB0cy9LYnVpbGQuaW5jbHVk
ZQ0KPiAgICAgPiArKysrIGIvc2NyaXB0cy9LYnVpbGQuaW5jbHVkZQ0KPiAgICAgPiArQEAgLTI2
MCwxMSArMjYwLDE2IEBAIG1ha2UtY21kID0gJChjYWxsIGVzY3NxLCQoc3Vic3QNCj4gICAgICQo
cG91bmQpLCQkKHBvdW5kKSwkKHN1YnN0ICQkLCQkJCQsJChjbWRfJCgxKSkpKQ0KPiAgICAgPiAr
ICMgUEhPTlkgdGFyZ2V0cyBza2lwcGVkIGluIGJvdGggY2FzZXMuDQo+ICAgICA+ICsgYW55LXBy
ZXJlcSA9ICQoZmlsdGVyLW91dCAkKFBIT05ZKSwkPykgJChmaWx0ZXItb3V0ICQoUEhPTlkpDQo+
ICAgICAkKHdpbGRjYXJkICReKSwkXikNCj4gICAgID4gKw0KPiAgICAgPiArK2lmZXEgKCQoQ09O
RklHX01PRFVMRV9TVFJJUFBFRCkseSkNCj4gICAgID4gKysgbW9kdWxlLXN0cmlwID0gcz0kQDsg
aWYgWyAiJCR7cy8vKi59IiA9ICJrbyIgXTt0aGVuICQoU1RSSVApIC1nDQo+ICAgICAtUyAtZCAt
LXN0cmlwLXVubmVlZGVkICRAIDtmaQ0KPiAgICAgPiArK2VuZGlmDQo+ICAgICA+ICArDQo+ICAg
ICA+IC0gaWYgKGZsYWdzICYgTU9EVUxFX0lOSVRfSUdOT1JFX1ZFUk1BR0lDKQ0KPiAgICAgPiAt
IG1vZG1hZ2ljID0gTlVMTDsNCj4gICAgID4gLQ0KPiAgICAgPiAtQEAgLTMwNDMsNiArMzA0NSw3
IEBAIHN0YXRpYyBpbnQgY2hlY2tfbW9kaW5mbyhzdHJ1Y3QgbW9kdWxlICoNCj4gICAgID4gLSBt
b2QtPm5hbWUpOw0KPiAgICAgPiAtIGFkZF90YWludF9tb2R1bGUobW9kLCBUQUlOVF9PT1RfTU9E
VUxFLCBMT0NLREVQX1NUSUxMX09LKTsNCj4gICAgID4gLSB9DQo+ICAgICA+IC0rI2VuZGlmDQo+
ICAgICA+IC0NCj4gICAgID4gLSBjaGVja19tb2RpbmZvX3JldHBvbGluZShtb2QsIGluZm8pOw0K
PiAgICAgPiAtDQo+ICAgICA+IC0tLS0gYS9zY3JpcHRzL21vZC9tb2Rwb3N0LmMNCj4gICAgID4g
LSsrKyBiL3NjcmlwdHMvbW9kL21vZHBvc3QuYw0KPiAgICAgPiAtQEAgLTE5ODQsNyArMTk4NCw5
IEBAIHN0YXRpYyB2b2lkIHJlYWRfc3ltYm9scyhjaGFyICptb2RuYW1lKQ0KPiAgICAgPiAtIHN5
bW5hbWUgPSByZW1vdmVfZG90KGluZm8uc3RydGFiICsgc3ltLT5zdF9uYW1lKTsNCj4gICAgID4g
LQ0KPiAgICAgPiAtIGhhbmRsZV9tb2R2ZXJzaW9ucyhtb2QsICZpbmZvLCBzeW0sIHN5bW5hbWUp
Ow0KPiAgICAgPiAtKyNpZm5kZWYgQ09ORklHX01PRFVMRV9TVFJJUFBFRA0KPiAgICAgPiAtIGhh
bmRsZV9tb2RkZXZ0YWJsZShtb2QsICZpbmZvLCBzeW0sIHN5bW5hbWUpOw0KPiAgICAgPiAtKyNl
bmRpZg0KPiAgICAgPiAtIH0NCj4gICAgID4gLSBpZiAoIWlzX3ZtbGludXgobW9kbmFtZSkgfHwN
Cj4gICAgID4gLSAgICAgIChpc192bWxpbnV4KG1vZG5hbWUpICYmIHZtbGludXhfc2VjdGlvbl93
YXJuaW5ncykpDQo+ICAgICA+IC1AQCAtMjE0NSw4ICsyMTQ3LDEwIEBAIHN0YXRpYyB2b2lkIGFk
ZF9oZWFkZXIoc3RydWN0IGJ1ZmZlciAqYiwNCj4gICAgID4gLSBidWZfcHJpbnRmKGIsICIjaW5j
bHVkZSA8bGludXgvdmVybWFnaWMuaD5cbiIpOw0KPiAgICAgPiAtIGJ1Zl9wcmludGYoYiwgIiNp
bmNsdWRlIDxsaW51eC9jb21waWxlci5oPlxuIik7DQo+ICAgICA+IC0gYnVmX3ByaW50ZihiLCAi
XG4iKTsNCj4gICAgID4gLSsjaWZuZGVmIENPTkZJR19NT0RVTEVfU1RSSVBQRUQNCj4gICAgID4g
LSBidWZfcHJpbnRmKGIsICJNT0RVTEVfSU5GTyh2ZXJtYWdpYywgVkVSTUFHSUNfU1RSSU5HKTtc
biIpOw0KPiAgICAgPiAtIGJ1Zl9wcmludGYoYiwgIk1PRFVMRV9JTkZPKG5hbWUsIEtCVUlMRF9N
T0ROQU1FKTtcbiIpOw0KPiAgICAgPiAtKyNlbmRpZg0KPiAgICAgPiAtIGJ1Zl9wcmludGYoYiwg
IlxuIik7DQo+ICAgICA+IC0gYnVmX3ByaW50ZihiLCAiX192aXNpYmxlIHN0cnVjdCBtb2R1bGUg
X190aGlzX21vZHVsZVxuIik7DQo+ICAgICA+IC0gYnVmX3ByaW50ZihiLA0KPiAgICAgIl9fYXR0
cmlidXRlX18oKHNlY3Rpb24oXCIuZ251LmxpbmtvbmNlLnRoaXNfbW9kdWxlXCIpKSkgPSB7XG4i
KTsNCj4gICAgID4gLUBAIC0yMTYzLDggKzIxNjcsMTAgQEAgc3RhdGljIHZvaWQgYWRkX2hlYWRl
cihzdHJ1Y3QgYnVmZmVyICpiLA0KPiAgICAgPiAtDQo+ICAgICA+IC0gc3RhdGljIHZvaWQgYWRk
X2ludHJlZV9mbGFnKHN0cnVjdCBidWZmZXIgKmIsIGludCBpc19pbnRyZWUpDQo+ICAgICA+IC0g
ew0KPiAgICAgPiAtKyNpZm5kZWYgQ09ORklHX01PRFVMRV9TVFJJUFBFRA0KPiAgICAgPiAtIGlm
IChpc19pbnRyZWUpDQo+ICAgICA+IC0gYnVmX3ByaW50ZihiLCAiXG5NT0RVTEVfSU5GTyhpbnRy
ZWUsIFwiWVwiKTtcbiIpOw0KPiAgICAgPiAtKyNlbmRpZg0KPiAgICAgPiAtIH0NCj4gICAgID4g
LQ0KPiAgICAgPiAtIC8qIENhbm5vdCBjaGVjayBmb3IgYXNzZW1ibGVyICovDQo+ICAgICA+IC1A
QCAtMjE3NywxMCArMjE4MywxMiBAQCBzdGF0aWMgdm9pZCBhZGRfcmV0cG9saW5lKHN0cnVjdCBi
dWZmZXINCj4gICAgID4gLQ0KPiAgICAgPiAtIHN0YXRpYyB2b2lkIGFkZF9zdGFnaW5nX2ZsYWco
c3RydWN0IGJ1ZmZlciAqYiwgY29uc3QgY2hhciAqbmFtZSkNCj4gICAgID4gLSB7DQo+ICAgICA+
IC0rI2lmbmRlZiBDT05GSUdfTU9EVUxFX1NUUklQUEVEDQo+ICAgICA+IC0gc3RhdGljIGNvbnN0
IGNoYXIgKnN0YWdpbmdfZGlyID0gImRyaXZlcnMvc3RhZ2luZyI7DQo+ICAgICA+IC0NCj4gICAg
ID4gLSBpZiAoc3RybmNtcChzdGFnaW5nX2RpciwgbmFtZSwgc3RybGVuKHN0YWdpbmdfZGlyKSkg
PT0gMCkNCj4gICAgID4gLSBidWZfcHJpbnRmKGIsICJcbk1PRFVMRV9JTkZPKHN0YWdpbmcsIFwi
WVwiKTtcbiIpOw0KPiAgICAgPiAtKyNlbmRpZg0KPiAgICAgPiAtIH0NCj4gICAgID4gLQ0KPiAg
ICAgPiAtIC8qKg0KPiAgICAgPiAtQEAgLTIyNzksMTEgKzIyODcsMTMgQEAgc3RhdGljIHZvaWQg
YWRkX2RlcGVuZHMoc3RydWN0IGJ1ZmZlciAqYg0KPiAgICAgPiAtDQo+ICAgICA+IC0gc3RhdGlj
IHZvaWQgYWRkX3NyY3ZlcnNpb24oc3RydWN0IGJ1ZmZlciAqYiwgc3RydWN0IG1vZHVsZSAqbW9k
KQ0KPiAgICAgPiAtIHsNCj4gICAgID4gLSsjaWZuZGVmIENPTkZJR19NT0RVTEVfU1RSSVBQRUQN
Cj4gICAgID4gLSBpZiAobW9kLT5zcmN2ZXJzaW9uWzBdKSB7DQo+ICAgICA+IC0gYnVmX3ByaW50
ZihiLCAiXG4iKTsNCj4gICAgID4gLSBidWZfcHJpbnRmKGIsICJNT0RVTEVfSU5GTyhzcmN2ZXJz
aW9uLCBcIiVzXCIpO1xuIiwNCj4gICAgID4gLSAgICBtb2QtPnNyY3ZlcnNpb24pOw0KPiAgICAg
PiAtIH0NCj4gICAgID4gLSsjZW5kaWYNCj4gICAgID4gLSB9DQo+ICAgICA+IC0NCj4gICAgID4g
LSBzdGF0aWMgdm9pZCB3cml0ZV9pZl9jaGFuZ2VkKHN0cnVjdCBidWZmZXIgKmIsIGNvbnN0IGNo
YXIgKmZuYW1lKQ0KPiAgICAgPiAtQEAgLTI1MjAsNyArMjUzMCw5IEBAIGludCBtYWluKGludCBh
cmdjLCBjaGFyICoqYXJndikNCj4gICAgID4gLSBhZGRfc3RhZ2luZ19mbGFnKCZidWYsIG1vZC0+
bmFtZSk7DQo+ICAgICA+IC0gZXJyIHw9IGFkZF92ZXJzaW9ucygmYnVmLCBtb2QpOw0KPiAgICAg
PiAtIGFkZF9kZXBlbmRzKCZidWYsIG1vZCwgbW9kdWxlcyk7DQo+ICAgICA+IC0rI2lmbmRlZiBD
T05GSUdfTU9EVUxFX1NUUklQUEVEDQo+ICAgICA+IC0gYWRkX21vZGRldnRhYmxlKCZidWYsIG1v
ZCk7DQo+ICAgICA+IC0rI2VuZGlmDQo+ICAgICA+IC0gYWRkX3NyY3ZlcnNpb24oJmJ1ZiwgbW9k
KTsNCj4gICAgID4gLQ0KPiAgICAgPiAtIHNwcmludGYoZm5hbWUsICIlcy5tb2QuYyIsIG1vZC0+
bmFtZSk7DQo+ICAgICA+ICsgIyBFeGVjdXRlIGNvbW1hbmQgaWYgY29tbWFuZCBoYXMgY2hhbmdl
ZCBvciBwcmVyZXF1aXNpdGUocykgYXJlDQo+ICAgICB1cGRhdGVkLg0KPiAgICAgPiArIGlmX2No
YW5nZWQgPSAkKGlmICQoc3RyaXAgJChhbnktcHJlcmVxKQ0KPiAgICAgJChhcmctY2hlY2spKSwg
ICAgICAgICAgICAgICAgICAgICAgIFwNCj4gICAgID4gKyBAc2V0DQo+ICAgICAtZTsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXA0K
PiAgICAgPiArICQoZWNoby1jbWQpDQo+ICAgICAkKGNtZF8kKDEpKTsgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBcDQo+ICAgICA+ICstIHByaW50ZiAnJXNcbicg
J2NtZF8kQCA6PSAkKG1ha2UtY21kKScgPiAkKGRvdC10YXJnZXQpLmNtZCwgQDopDQo+ICAgICA+
ICsrIHByaW50ZiAnJXNcbicgJ2NtZF8kQCA6PSAkKG1ha2UtY21kKScgPiAkKGRvdC10YXJnZXQp
LmNtZCwNCj4gICAgIEA6KTsgICAgICBcDQo+ICAgICA+ICsrICQobW9kdWxlLXN0cmlwKQ0KPiAg
ICAgPiArDQo+ICAgICA+ICsgIyBFeGVjdXRlIHRoZSBjb21tYW5kIGFuZCBhbHNvIHBvc3Rwcm9j
ZXNzIGdlbmVyYXRlZCAuZA0KPiAgICAgZGVwZW5kZW5jaWVzIGZpbGUuDQo+ICAgICA+ICsgaWZf
Y2hhbmdlZF9kZXAgPSAkKGlmICQoc3RyaXAgJChhbnktcHJlcmVxKSAkKGFyZy1jaGVjaykNCj4g
ICAgICksICAgICAgICAgICAgICAgICAgXA0KPiAgICAgPg0KPiAgICAgIA0KPiAgICAgIA0KPiAN
Cj4gDQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+
IG9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0DQo+IG9wZW53cnQtZGV2ZWxAbGlzdHMub3Blbndy
dC5vcmcNCj4gaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53
cnQtZGV2ZWwNCj4gDQo=

------=_001_NextPart500304512217_=----
Content-Type: text/html;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charse=
t=3DUTF-8"><style>body { line-height: 1.5; }blockquote { margin-top: 0px; =
margin-bottom: 0px; margin-left: 0.5em; }body { font-size: 10.5pt; font-fa=
mily: =E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91; color: rgb(0, 0, 0); line-heig=
ht: 1.5; }</style></head><body>=0A<div><span></span>Hi,</div><div><br></di=
v><div><div>&nbsp; &nbsp; I compile the kernel options, without any specia=
l open the DEBUG options.</div><div>&nbsp; &nbsp; But the compiled KO modu=
le size is very big.</div></div>=0A<div><br></div><div><span><div style=3D=
"MARGIN-TOP: 10px; MARGIN-LEFT: 10px; MARGIN-RIGHT: 10px"><div><span style=
=3D"FONT-FAMILY: =E5=AE=8B=E4=BD=93; COLOR: #000000; FONT-SIZE: 10.5pt"><d=
iv style=3D"WIDOWS: 1; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255,255=
,255); TEXT-INDENT: 0px; FONT: 14px/21px Verdana; WHITE-SPACE: normal; LET=
TER-SPACING: normal; COLOR: rgb(0,0,0); WORD-SPACING: 0px; -webkit-text-st=
roke-width: 0px"><div style=3D"LINE-HEIGHT: 1.5"><div style=3D"LINE-HEIGHT=
: 1.5"><span style=3D"FONT-FAMILY: =E5=AE=8B=E4=BD=93; COLOR: rgb(0,0,0); =
FONT-SIZE: 10.5pt"><div style=3D"TEXT-TRANSFORM: none; BACKGROUND-COLOR: r=
gb(255,255,255); TEXT-INDENT: 0px; FONT: 12px/18px 'lucida Grande', Verdan=
a; WHITE-SPACE: normal; LETTER-SPACING: normal; COLOR: rgb(0,0,0); WORD-SP=
ACING: 0px; -webkit-text-stroke-width: 0px; font-stretch: normal"><br></di=
v></span></div></div></div></span></div></div></span></div>=0A<blockquote =
style=3D"margin-Top: 0px; margin-Bottom: 0px; margin-Left: 0.5em"><div>&nb=
sp;</div><div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:=
3.0pt 0cm 0cm 0cm"><div style=3D"PADDING-RIGHT: 8px; PADDING-LEFT: 8px; FO=
NT-SIZE: 12px;FONT-FAMILY:tahoma;COLOR:#000000; BACKGROUND: #efefef; PADDI=
NG-BOTTOM: 8px; PADDING-TOP: 8px"><div><b>From:</b>&nbsp;<a href=3D"mailto=
:nbd@nbd.name">Felix Fietkau</a></div><div><b>Date:</b>&nbsp;2019-10-31&nb=
sp;15:31</div><div><b>To:</b>&nbsp;<a href=3D"mailto:lxliu@ikuai8.com">=E5=
=A4=A7=E9=9B=84</a>; <a href=3D"mailto:hauke@hauke-m.de">Hauke Mehrtens</a=
>; <a href=3D"mailto:openwrt-devel@lists.openwrt.org">openwrt-devel</a></d=
iv><div><b>Subject:</b>&nbsp;Re: [OpenWrt-Devel] [PATCH-19.07] build: fix =
module strip invalid</div></div></div><div><div>Hi,</div>=0A<div>&nbsp;</d=
iv>=0A<div>I don't think this patch is correct. The purpose of the existin=
g</div>=0A<div>204-module_strip.patch is completely different from the str=
ipping</div>=0A<div>behavior that you introduce, and you haven't described=
 what issues you</div>=0A<div>have with the existing code.</div>=0A<div>Al=
so, running strip inside the kernel build system is a bad idea,</div>=0A<d=
iv>because the build system already strips all kernel modules when packagi=
ng.</div>=0A<div>The .ko files inside the kernel tree should still contain=
 debug symbols,</div>=0A<div>because that is needed for debugging.</div>=
=0A<div>&nbsp;</div>=0A<div>- Felix</div>=0A<div>&nbsp;</div>=0A<div>On 20=
19-10-31 02:46, =E5=A4=A7=E9=9B=84 wrote:</div>=0A<div>&gt; Build file&nbs=
p;drivers/net/ethernet/intel/e1000e/e1000e.ko size about 920KB</div>=0A<di=
v>&gt; for old PATCH.</div>=0A<div>&gt; After the new patch is about 177KB=
</div>=0A<div>&gt; </div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; *From:*&nbsp=
;Hauke Mehrtens &lt;mailto:hauke@hauke-m.de&gt;</div>=0A<div>&gt;&nbsp;&nb=
sp;&nbsp;&nbsp; *Date:*&nbsp;2019-10-30&nbsp;23:47</div>=0A<div>&gt;&nbsp;=
&nbsp;&nbsp;&nbsp; *To:*&nbsp;daxiong &lt;mailto:lxliu@ikuai8.com&gt;; ope=
nwrt-devel</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &lt;mailto:openwrt-de=
vel@lists.openwrt.org&gt;</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; *Subje=
ct:*&nbsp;Re: [OpenWrt-Devel] [PATCH-19.07] build: fix module strip</div>=
=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; invalid</div>=0A<div>&gt;&nbsp;&nbsp;=
&nbsp;&nbsp; On 10/30/19 11:14 AM, daxiong wrote:</div>=0A<div>&gt;&nbsp;&=
nbsp;&nbsp;&nbsp; &gt; Current modpost cannot reduce the module size.</div=
>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;</div>=0A<div>&gt;&nbsp;&nbsp;&n=
bsp;&nbsp; &gt; Use $(STRIP) command to replace the modpost patch,</div>=
=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; I think to be compatibility will=
 be better.</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;</div>=0A<div>&g=
t;&nbsp;&nbsp;&nbsp;&nbsp; &gt; Signed-off-by: daxiong &lt;lxliu@ikuai8.co=
m&gt;</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</div>=0A<div>&gt;&n=
bsp;&nbsp;&nbsp;&nbsp; Please base this against master, then we can backpo=
rt it to 19.07.</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</div>=0A<=
div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; Could you please elaborate a little bit m=
ore how module-strip provides</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; be=
tter results than the previous patch? It would be nice if you could</div>=
=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; also provide some numbers to compare =
the previous size and the</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; curren=
t size.</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</div>=0A<div>&gt;=
&nbsp;&nbsp;&nbsp;&nbsp; Would it make sense to do both together, what was=
 done in this patch</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; before and a=
fter your change?</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</div>=
=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; Hauke</div>=0A<div>&gt;&nbsp;&nbsp;&n=
bsp;&nbsp; &nbsp;</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; ---</div>=
=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&nbsp; .../linux/generic/hack-4.1=
4/204-module_strip.patch | 216</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; +=
++------------------</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&nbsp; =
1 file changed, 24 insertions(+), 192 deletions(-)</div>=0A<div>&gt;&nbsp;=
&nbsp;&nbsp;&nbsp; &gt;</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; dif=
f --git a/target/linux/generic/hack-4.14/204-module_strip.patch</div>=0A<d=
iv>&gt;&nbsp;&nbsp;&nbsp;&nbsp; b/target/linux/generic/hack-4.14/204-modul=
e_strip.patch</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; index d847adf=
..c22a507 100644</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; --- a/targ=
et/linux/generic/hack-4.14/204-module_strip.patch</div>=0A<div>&gt;&nbsp;&=
nbsp;&nbsp;&nbsp; &gt; +++ b/target/linux/generic/hack-4.14/204-module_str=
ip.patch</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; @@ -1,104 +1,8 @@<=
/div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -From a779a482fb9b9f8fcdf8b=
2519c789b4b9bb5dd05 Mon Sep 17 00:00:00</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp=
;&nbsp; 2001</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -From: Felix F=
ietkau &lt;nbd@nbd.name&gt;</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;=
 -Date: Fri, 7 Jul 2017 16:56:48 +0200</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;=
&nbsp; &gt; -Subject: build: add a hack for removing non-essential module =
info</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -</div>=0A<div>&gt;&nb=
sp;&nbsp;&nbsp;&nbsp; &gt; -Signed-off-by: Felix Fietkau &lt;nbd@nbd.name&=
gt;</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; ----</div>=0A<div>&gt;&=
nbsp;&nbsp;&nbsp;&nbsp; &gt; - include/linux/module.h&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; | 13 ++++++++-----</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt=
; - include/linux/moduleparam.h | 15 ++++++++++++---</div>=0A<div>&gt;&nbs=
p;&nbsp;&nbsp;&nbsp; &gt; - init/Kconfig&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp; 7 +++++++=
</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; - kernel/module.c&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp; 5 =
++++-</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; - scripts/mod/modpost=
.c&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | 12 ++++++++++++</div>=0A<div>&gt;=
&nbsp;&nbsp;&nbsp;&nbsp; &gt; - 5 files changed, 43 insertions(+), 9 delet=
ions(-)</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -</div>=0A<div>&gt;=
&nbsp;&nbsp;&nbsp;&nbsp; &gt; ---- a/include/linux/module.h</div>=0A<div>&=
gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -+++ b/include/linux/module.h</div>=0A<di=
v>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -@@ -158,6 +158,7 @@ extern void clean=
up_module(void);</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -</div>=0A=
<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; - /* Generic info of form tag =3D "=
info" */</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; - #define MODULE_I=
NFO(tag, info) __MODULE_INFO(tag, tag, info)</div>=0A<div>&gt;&nbsp;&nbsp;=
&nbsp;&nbsp; &gt; -+#define MODULE_INFO_STRIP(tag, info) __MODULE_INFO_STR=
IP(tag,</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; tag, info)</div>=0A<div>=
&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nb=
sp; &gt; - /* For userspace: you can also call me... */</div>=0A<div>&gt;&=
nbsp;&nbsp;&nbsp;&nbsp; &gt; - #define MODULE_ALIAS(_alias) MODULE_INFO(al=
ias, _alias)</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -@@ -201,12 +2=
02,12 @@ extern void cleanup_module(void);</div>=0A<div>&gt;&nbsp;&nbsp;&n=
bsp;&nbsp; &gt; -&nbsp; * Author(s), use "Name &lt;email&gt;" or just "Nam=
e", for multiple</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -&nbsp; * =
authors use multiple MODULE_AUTHOR() statements/lines.</div>=0A<div>&gt;&n=
bsp;&nbsp;&nbsp;&nbsp; &gt; -&nbsp; */</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;=
&nbsp; &gt; --#define MODULE_AUTHOR(_author) MODULE_INFO(author, _author)<=
/div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -+#define MODULE_AUTHOR(_au=
thor) MODULE_INFO_STRIP(author, _author)</div>=0A<div>&gt;&nbsp;&nbsp;&nbs=
p;&nbsp; &gt; -</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; - /* What y=
our module does. */</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; --#defi=
ne MODULE_DESCRIPTION(_description)</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nb=
sp; MODULE_INFO(description, _description)</div>=0A<div>&gt;&nbsp;&nbsp;&n=
bsp;&nbsp; &gt; -+#define MODULE_DESCRIPTION(_description)</div>=0A<div>&g=
t;&nbsp;&nbsp;&nbsp;&nbsp; MODULE_INFO_STRIP(description, _description)</d=
iv>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -</div>=0A<div>&gt;&nbsp;&nbs=
p;&nbsp;&nbsp; &gt; --#ifdef MODULE</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nb=
sp; &gt; -+#if defined(MODULE) &amp;&amp; !defined(CONFIG_MODULE_STRIPPED)=
</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; - /* Creates an alias so f=
ile2alias.c can find device table. */</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&=
nbsp; &gt; - #define MODULE_DEVICE_TABLE(type, name) \</div>=0A<div>&gt;&n=
bsp;&nbsp;&nbsp;&nbsp; &gt; - extern typeof(name) __mod_##type##__##name##=
_device_table \</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -@@ -233,7 =
+234,9 @@ extern typeof(name) __mod_##type##__##na</div>=0A<div>&gt;&nbsp;=
&nbsp;&nbsp;&nbsp; &gt; -&nbsp; */</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbs=
p; &gt; -</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; - #if defined(MOD=
ULE) || !defined(CONFIG_SYSFS)</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &=
gt; --#define MODULE_VERSION(_version) MODULE_INFO(version, _version)</div=
>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -+#define MODULE_VERSION(_versi=
on) MODULE_INFO_STRIP(version,</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; _=
version)</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -+#elif defined(CO=
NFIG_MODULE_STRIPPED)</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -+#de=
fine MODULE_VERSION(_version) __MODULE_INFO_DISABLED(version)</div>=0A<div=
>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; - #else</div>=0A<div>&gt;&nbsp;&nbsp;&n=
bsp;&nbsp; &gt; - #define MODULE_VERSION(_version) \</div>=0A<div>&gt;&nbs=
p;&nbsp;&nbsp;&nbsp; &gt; - static struct module_version_attribute ___modv=
er_attr =3D { \</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -@@ -255,7 =
+258,7 @@ extern typeof(name) __mod_##type##__##na</div>=0A<div>&gt;&nbsp;=
&nbsp;&nbsp;&nbsp; &gt; - /* Optional firmware file (or files) needed by t=
he module</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -&nbsp; * format =
is simply firmware file name.&nbsp; Multiple firmware</div>=0A<div>&gt;&nb=
sp;&nbsp;&nbsp;&nbsp; &gt; -&nbsp; * files require multiple MODULE_FIRMWAR=
E() specifiers */</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; --#define=
 MODULE_FIRMWARE(_firmware) MODULE_INFO(firmware, _firmware)</div>=0A<div>=
&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -+#define MODULE_FIRMWARE(_firmware) MOD=
ULE_INFO_STRIP(firmware,</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; _firmwa=
re)</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -</div>=0A<div>&gt;&nbs=
p;&nbsp;&nbsp;&nbsp; &gt; - struct notifier_block;</div>=0A<div>&gt;&nbsp;=
&nbsp;&nbsp;&nbsp; &gt; -</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -=
--- a/include/linux/moduleparam.h</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp=
; &gt; -+++ b/include/linux/moduleparam.h</div>=0A<div>&gt;&nbsp;&nbsp;&nb=
sp;&nbsp; &gt; -@@ -17,6 +17,16 @@</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbs=
p; &gt; - /* Chosen so that structs with an unsigned long line up. */</div=
>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; - #define MAX_PARAM_PREFIX_LEN =
(64 - sizeof(unsigned long))</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt=
; -</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -+/* This struct is her=
e for syntactic coherency, it is not used */</div>=0A<div>&gt;&nbsp;&nbsp;=
&nbsp;&nbsp; &gt; -+#define __MODULE_INFO_DISABLED(name) &nbsp; \</div>=0A=
<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -+&nbsp; struct __UNIQUE_ID(name) {=
}</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -+</div>=0A<div>&gt;&nbsp=
;&nbsp;&nbsp;&nbsp; &gt; -+#ifdef CONFIG_MODULE_STRIPPED</div>=0A<div>&gt;=
&nbsp;&nbsp;&nbsp;&nbsp; &gt; -+#define __MODULE_INFO_STRIP(tag, name, inf=
o)</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; __MODULE_INFO_DISABLED(name)<=
/div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -+#else</div>=0A<div>&gt;&n=
bsp;&nbsp;&nbsp;&nbsp; &gt; -+#define __MODULE_INFO_STRIP(tag, name, info)=
 __MODULE_INFO(tag,</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; name, info)<=
/div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -+#endif</div>=0A<div>&gt;&=
nbsp;&nbsp;&nbsp;&nbsp; &gt; -+</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; =
&gt; - #ifdef MODULE</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; - #def=
ine __MODULE_INFO(tag, name, info) &nbsp; \</div>=0A<div>&gt;&nbsp;&nbsp;&=
nbsp;&nbsp; &gt; - static const char __UNIQUE_ID(name)[] &nbsp; \</div>=0A=
<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -@@ -24,8 +34,7 @@ static const cha=
r __UNIQUE_ID(name)[]</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -&nbs=
p;&nbsp; =3D __stringify(tag) "=3D" info</div>=0A<div>&gt;&nbsp;&nbsp;&nbs=
p;&nbsp; &gt; - #else&nbsp; /* !MODULE */</div>=0A<div>&gt;&nbsp;&nbsp;&nb=
sp;&nbsp; &gt; - /* This struct is here for syntactic coherency, it is not=
 used */</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; --#define __MODULE=
_INFO(tag, name, info) &nbsp; \</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; =
&gt; --&nbsp; struct __UNIQUE_ID(name) {}</div>=0A<div>&gt;&nbsp;&nbsp;&nb=
sp;&nbsp; &gt; -+#define __MODULE_INFO(tag, name, info) __MODULE_INFO_DISA=
BLED(name)</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; - #endif</div>=
=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; - #define __MODULE_PARM_TYPE(nam=
e, _type) &nbsp; \</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -&nbsp;&=
nbsp; __MODULE_INFO(parmtype, name##type, #name ":" _type)</div>=0A<div>&g=
t;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -@@ -33,7 +42,7 @@ static const char __UNI=
QUE_ID(name)[]</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; - /* One for=
 each parameter, describing how to use it.&nbsp; Some files do</div>=0A<di=
v>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -&nbsp;&nbsp;&nbsp; multiple of these =
per line, so can't just use MODULE_INFO. */</div>=0A<div>&gt;&nbsp;&nbsp;&=
nbsp;&nbsp; &gt; - #define MODULE_PARM_DESC(_parm, desc) \</div>=0A<div>&g=
t;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -- __MODULE_INFO(parm, _parm, #_parm ":" d=
esc)</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -+ __MODULE_INFO_STRIP=
(parm, _parm, #_parm ":" desc)</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &=
gt; -</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; - struct kernel_param=
;</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -</div>=0A<div>&gt;&nbsp;=
&nbsp;&nbsp;&nbsp; &gt; +diff --git a/init/Kconfig b/init/Kconfig</div>=0A=
<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; +index 4607532..cba0f81 100644</div=
>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&nbsp; --- a/init/Kconfig</div>=
=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&nbsp; +++ b/init/Kconfig</div>=
=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -@@ -1903,6 +1903,13 @@ config T=
RIM_UNUSED_KSYMS</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; +@@ -1883,=
6 +1883,13 @@ config TRIM_UNUSED_KSYMS</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;=
&nbsp; &gt;&nbsp;&nbsp;</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&nbs=
p;&nbsp; &nbsp; If unsure, or if you need to build out-of-tree modules, sa=
y N.</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&nbsp;&nbsp;</div>=0A<d=
iv>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; @@ -112,97 +16,25 @@ Signed-off-by: F=
elix Fietkau &lt;nbd@nbd.name&gt;</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp=
; &gt;&nbsp;&nbsp; endif # MODULES</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbs=
p; &gt;&nbsp;&nbsp;</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&nbsp;&n=
bsp; config MODULES_TREE_LOOKUP</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; =
&gt; ---- a/kernel/module.c</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;=
 -+++ b/kernel/module.c</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -@@=
 -3020,9 +3020,11 @@ static struct module *setup_load_info(st</div>=0A<div=
>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&n=
bsp; &gt; - static int check_modinfo(struct module *mod, struct load_info<=
/div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; *info, int flags)</div>=0A<div>&=
gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; - {</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&n=
bsp; &gt; -- const char *modmagic =3D get_modinfo(info, "vermagic");</div>=
=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; - int err;</div>=0A<div>&gt;&nbs=
p;&nbsp;&nbsp;&nbsp; &gt; -</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;=
 -+#ifndef CONFIG_MODULE_STRIPPED</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp=
; &gt; -+ const char *modmagic =3D get_modinfo(info, "vermagic");</div>=0A=
<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; +diff --git a/scripts/Kbuild.includ=
e b/scripts/Kbuild.include</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; =
+index a33fa1a..34b34e0 100644</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &=
gt; +--- a/scripts/Kbuild.include</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp=
; &gt; ++++ b/scripts/Kbuild.include</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&n=
bsp; &gt; +@@ -260,11 +260,16 @@ make-cmd =3D $(call escsq,$(subst</div>=
=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; $(pound),$$(pound),$(subst $$,$$$$,$(=
cmd_$(1))))</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; + # PHONY targe=
ts skipped in both cases.</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; +=
 any-prereq =3D $(filter-out $(PHONY),$?) $(filter-out $(PHONY)</div>=0A<d=
iv>&gt;&nbsp;&nbsp;&nbsp;&nbsp; $(wildcard $^),$^)</div>=0A<div>&gt;&nbsp;=
&nbsp;&nbsp;&nbsp; &gt; +</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; +=
+ifeq ($(CONFIG_MODULE_STRIPPED),y)</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nb=
sp; &gt; ++ module-strip =3D s=3D$@; if [ "$${s//*.}" =3D "ko" ];then $(ST=
RIP) -g</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; -S -d --strip-unneeded $=
@ ;fi</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; ++endif</div>=0A<div>=
&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&nbsp; +</div>=0A<div>&gt;&nbsp;&nbsp;&nb=
sp;&nbsp; &gt; - if (flags &amp; MODULE_INIT_IGNORE_VERMAGIC)</div>=0A<div=
>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; - modmagic =3D NULL;</div>=0A<div>&gt;&=
nbsp;&nbsp;&nbsp;&nbsp; &gt; -</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &=
gt; -@@ -3043,6 +3045,7 @@ static int check_modinfo(struct module *</div>=
=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; - mod-&gt;name);</div>=0A<div>&g=
t;&nbsp;&nbsp;&nbsp;&nbsp; &gt; - add_taint_module(mod, TAINT_OOT_MODULE, =
LOCKDEP_STILL_OK);</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; - }</div=
>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -+#endif</div>=0A<div>&gt;&nbsp=
;&nbsp;&nbsp;&nbsp; &gt; -</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; =
- check_modinfo_retpoline(mod, info);</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&=
nbsp; &gt; -</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; ---- a/scripts=
/mod/modpost.c</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -+++ b/scrip=
ts/mod/modpost.c</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -@@ -1984,=
7 +1984,9 @@ static void read_symbols(char *modname)</div>=0A<div>&gt;&nbs=
p;&nbsp;&nbsp;&nbsp; &gt; - symname =3D remove_dot(info.strtab + sym-&gt;s=
t_name);</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -</div>=0A<div>&gt=
;&nbsp;&nbsp;&nbsp;&nbsp; &gt; - handle_modversions(mod, &amp;info, sym, s=
ymname);</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -+#ifndef CONFIG_M=
ODULE_STRIPPED</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; - handle_mod=
devtable(mod, &amp;info, sym, symname);</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp=
;&nbsp; &gt; -+#endif</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; - }</=
div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; - if (!is_vmlinux(modname) |=
|</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; - &nbsp;&nbsp;&nbsp;&nbsp=
; (is_vmlinux(modname) &amp;&amp; vmlinux_section_warnings))</div>=0A<div>=
&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -@@ -2145,8 +2147,10 @@ static void add_=
header(struct buffer *b,</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; - =
buf_printf(b, "#include &lt;linux/vermagic.h&gt;\n");</div>=0A<div>&gt;&nb=
sp;&nbsp;&nbsp;&nbsp; &gt; - buf_printf(b, "#include &lt;linux/compiler.h&=
gt;\n");</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; - buf_printf(b, "\=
n");</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -+#ifndef CONFIG_MODUL=
E_STRIPPED</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; - buf_printf(b, =
"MODULE_INFO(vermagic, VERMAGIC_STRING);\n");</div>=0A<div>&gt;&nbsp;&nbsp=
;&nbsp;&nbsp; &gt; - buf_printf(b, "MODULE_INFO(name, KBUILD_MODNAME);\n")=
;</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -+#endif</div>=0A<div>&gt=
;&nbsp;&nbsp;&nbsp;&nbsp; &gt; - buf_printf(b, "\n");</div>=0A<div>&gt;&nb=
sp;&nbsp;&nbsp;&nbsp; &gt; - buf_printf(b, "__visible struct module __this=
_module\n");</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; - buf_printf(b=
,</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; "__attribute__((section(\".gnu=
.linkonce.this_module\"))) =3D {\n");</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&=
nbsp; &gt; -@@ -2163,8 +2167,10 @@ static void add_header(struct buffer *b=
,</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -</div>=0A<div>&gt;&nbsp;=
&nbsp;&nbsp;&nbsp; &gt; - static void add_intree_flag(struct buffer *b, in=
t is_intree)</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; - {</div>=0A<d=
iv>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -+#ifndef CONFIG_MODULE_STRIPPED</div=
>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; - if (is_intree)</div>=0A<div>&=
gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; - buf_printf(b, "\nMODULE_INFO(intree, \"=
Y\");\n");</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -+#endif</div>=
=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; - }</div>=0A<div>&gt;&nbsp;&nbsp=
;&nbsp;&nbsp; &gt; -</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; - /* C=
annot check for assembler */</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt=
; -@@ -2177,10 +2183,12 @@ static void add_retpoline(struct buffer</div>=
=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -</div>=0A<div>&gt;&nbsp;&nbsp;&=
nbsp;&nbsp; &gt; - static void add_staging_flag(struct buffer *b, const ch=
ar *name)</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; - {</div>=0A<div>=
&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -+#ifndef CONFIG_MODULE_STRIPPED</div>=
=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; - static const char *staging_dir=
 =3D "drivers/staging";</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -</=
div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; - if (strncmp(staging_dir, n=
ame, strlen(staging_dir)) =3D=3D 0)</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nb=
sp; &gt; - buf_printf(b, "\nMODULE_INFO(staging, \"Y\");\n");</div>=0A<div=
>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -+#endif</div>=0A<div>&gt;&nbsp;&nbsp;&=
nbsp;&nbsp; &gt; - }</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -</div=
>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; - /**</div>=0A<div>&gt;&nbsp;&n=
bsp;&nbsp;&nbsp; &gt; -@@ -2279,11 +2287,13 @@ static void add_depends(str=
uct buffer *b</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -</div>=0A<di=
v>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; - static void add_srcversion(struct bu=
ffer *b, struct module *mod)</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt=
; - {</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -+#ifndef CONFIG_MODU=
LE_STRIPPED</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; - if (mod-&gt;s=
rcversion[0]) {</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; - buf_print=
f(b, "\n");</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; - buf_printf(b,=
 "MODULE_INFO(srcversion, \"%s\");\n",</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;=
&nbsp; &gt; - &nbsp;&nbsp; mod-&gt;srcversion);</div>=0A<div>&gt;&nbsp;&nb=
sp;&nbsp;&nbsp; &gt; - }</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -+=
#endif</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; - }</div>=0A<div>&gt=
;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp;=
 &gt; - static void write_if_changed(struct buffer *b, const char *fname)<=
/div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -@@ -2520,7 +2530,9 @@ int =
main(int argc, char **argv)</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;=
 - add_staging_flag(&amp;buf, mod-&gt;name);</div>=0A<div>&gt;&nbsp;&nbsp;=
&nbsp;&nbsp; &gt; - err |=3D add_versions(&amp;buf, mod);</div>=0A<div>&gt=
;&nbsp;&nbsp;&nbsp;&nbsp; &gt; - add_depends(&amp;buf, mod, modules);</div=
>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -+#ifndef CONFIG_MODULE_STRIPPE=
D</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; - add_moddevtable(&amp;bu=
f, mod);</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -+#endif</div>=0A<=
div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; - add_srcversion(&amp;buf, mod);</di=
v>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; -</div>=0A<div>&gt;&nbsp;&nbsp=
;&nbsp;&nbsp; &gt; - sprintf(fname, "%s.mod.c", mod-&gt;name);</div>=0A<di=
v>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; + # Execute command if command has cha=
nged or prerequisite(s) are</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; upda=
ted.</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; + if_changed =3D $(if =
$(strip $(any-prereq)</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; $(arg-chec=
k)),&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; \</div>=0A<=
div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; + @set</div>=0A<div>&gt;&nbsp;&nbsp;=
&nbsp;&nbsp; -e;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; \</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; + $(echo-cmd)</div=
>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; $(cmd_$(1));&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; \</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; +- pri=
ntf '%s\n' 'cmd_$@ :=3D $(make-cmd)' &gt; $(dot-target).cmd, @:)</div>=0A<=
div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; ++ printf '%s\n' 'cmd_$@ :=3D $(make=
-cmd)' &gt; $(dot-target).cmd,</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; @=
:);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; \</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nb=
sp; &gt; ++ $(module-strip)</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;=
 +</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; + # Execute the command =
and also postprocess generated .d</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp=
; dependencies file.</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; + if_c=
hanged_dep =3D $(if $(strip $(any-prereq) $(arg-check)</div>=0A<div>&gt;&n=
bsp;&nbsp;&nbsp;&nbsp; ),&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; \</div>=0A<div>&gt;&=
nbsp;&nbsp;&nbsp;&nbsp; &gt;</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &nb=
sp;</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</div>=0A<div>&gt; </d=
iv>=0A<div>&gt; </div>=0A<div>&gt; _______________________________________=
________</div>=0A<div>&gt; openwrt-devel mailing list</div>=0A<div>&gt; op=
enwrt-devel@lists.openwrt.org</div>=0A<div>&gt; https://lists.openwrt.org/=
mailman/listinfo/openwrt-devel</div>=0A<div>&gt; </div>=0A</div></blockquo=
te>=0A</body></html>
------=_001_NextPart500304512217_=------







--===============2542784777221154160==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2542784777221154160==--






