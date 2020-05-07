Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BA9B1C8118
	for <lists+openwrt-devel@lfdr.de>; Thu,  7 May 2020 06:35:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Message-ID:MIME-Version:References:In-Reply-To:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QEqT/qMmiVIdZszIkCSxGApoS8SB/9SME3CvWzwYQq0=; b=SkkFcJunY11vej6iNSCd3lPlF
	2yw1oYd8XNrmesU53y2gBheuQKrilwcLsTVN5NFlPnT90vV2p809tZN64hQCJp2OTyYfePs0N++wl
	mD8AJCqUJafOullJblutJfEItL1bo2bnMPZL03JPgE/x5MKULR+CLcZ3Ba8gT/8BJ7r3koamqFu9S
	lSqxOaSxQrqsDpimTovFTzFF493YcAUW/QJ+SaaWLKdY55J6G8OZx/lciah7AzgwAN4ToxksaxOD9
	G2QMXpAQ9mOBvKuPCpXnJ9USAhwEI3mg/7oxG/r7DL6MOygWLrSXCSIT8sQ+Q8gzjDbnja4OorW6l
	IzgS16f0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWYFu-0001np-Gi; Thu, 07 May 2020 04:35:30 +0000
Received: from m15-52.126.com ([220.181.15.52])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWYFn-0001cj-Ra
 for openwrt-devel@lists.openwrt.org; Thu, 07 May 2020 04:35:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
 s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=tb5Sf
 Jxy7OEWmbVSWofUr0QmQt6oA5jiFgccH7nqBCs=; b=BiCRlW3GHk9lC5Yj/u/n3
 miJWruEb+Fi4CC/mlg75hhsPBk5z2CGlrYEEBB38hao6ZSdRYZ//ZqNP74BHLoac
 q7oS0onhi8S1DunOmfIWJtAs/sv7kgJ3Xg8SD8lIL5AmPe2ksYtYit4tUxjshIH0
 63jptlrMRIr2wicKXLPkms=
Received: from zhangkaiheb$126.com ( [222.128.180.40] ) by
 ajax-webmail-wmsvr52 (Coremail) ; Thu, 7 May 2020 12:35:16 +0800 (CST)
X-Originating-IP: [222.128.180.40]
Date: Thu, 7 May 2020 12:35:16 +0800 (CST)
From: =?UTF-8?B?5byg5Yev?= <zhangkaiheb@126.com>
To: "Daniel Golle" <daniel@makrotopia.org>
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.10 build 20190724(ac680a23)
 Copyright (c) 2002-2020 www.mailtech.cn 126com
In-Reply-To: <20200506115247.GC1810@makrotopia.org>
References: <20200506105117.66929-1-zhangkaiheb@126.com>
 <20200506115247.GC1810@makrotopia.org>
MIME-Version: 1.0
Message-ID: <1e4db1fb.30a2.171ed6a912c.Coremail.zhangkaiheb@126.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: NMqowAAnskAFkLNegfGkAA--.64709W
X-CM-SenderInfo: x2kd0wxndlxvbe6rjloofrz/1tbinx4d-lpD-Ns+EQACsx
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_213524_657551_F891E96F 
X-CRM114-Status: UNSURE (   7.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zhangkaiheb[at]126.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] add i40e netdevice configs
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============3779308673316037179=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============3779308673316037179==
Content-Type: multipart/alternative; 
	boundary="----=_Part_45500_1406854803.1588826116396"

------=_Part_45500_1406854803.1588826116396
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: base64

QXQgMjAyMC0wNS0wNiAxOTo1Mjo0NywgIkRhbmllbCBHb2xsZSIgPGRhbmllbEBtYWtyb3RvcGlh
Lm9yZz4gd3JvdGU6Cgo+T24gV2VkLCBNYXkgMDYsIDIwMjAgYXQgMTA6NTE6MTdBTSArMDAwMCwg
emhhbmdrYWloZWJAMTI2LmNvbSB3cm90ZToKPj4gRnJvbToga2FpIHpoYW5nIDx6aGFuZ2thaWhl
YkAxMjYuY29tPgo+Cj5NdXN0IGhhdmUgYmVlbiBhIHRvbyBiaXQgZWFybHkgZm9yIG1lIHRvZGF5
LCBidXQgYXBhcnQgZnJvbSB0aGUgbWlzc2luZwo+Y29tbWl0IGRlc2NyaXB0aW9uIGFuZCAna2Vy
bmVsOiAnIHByZWZpeCBvZiB0aGUgY29tbWl0IHRpdGxlcywgSSBoYXZlCj5hbHNvIGp1c3Qgbm90
aWNlZCB0aGF0IHRoaXMgaGFzIGFscmVhZHkgYmVlbiBhZGRlZCByZWNlbnRseSB3aXRoCj4KPmNv
bW1pdCA1ZDgxYjI4YTgyOWFjMjBmYjYwOTkxZTcxZWU3YTdjNTNkMTRmZDU4Cj5BdXRob3I6IFhp
YW9ibyBUaWFuIDxwZXRlcndpbGxjbkBnbWFpbC5jb20+Cj5EYXRlOiAgIFdlZCBBcHIgMSAxMjox
OTozNSAyMDIwICswODAwCj4KPmtlcm5lbDogc3VwcG9ydCBpbnRlbCBYN3h4IDEwLzQwR2JFIGFk
YXB0ZXJzCj4KPlNpZ25lZC1vZmYtYnk6IFhpYW9ibyBUaWFuIDxwZXRlcndpbGxjbkBnbWFpbC5j
b20+Cj5bQWRkIGk0MGV2Zi9pNDBldmYua28gYW5kIHNldGVjdCBDT05GSUdfSUFWRl0KPlNpZ25l
ZC1vZmYtYnk6IEhhdWtlIE1laHJ0ZW5zIDxoYXVrZUBoYXVrZS1tLmRlPgo+Cgo+CgoKSSBzYXcg
dGhlIGNvbW1pdCBieSBYaWFvYm8gVGlhbiBhZnRlciB1cGRhdGluZywgdGhhbmtzIQo+PiAKPj4g
U2lnbmVkLW9mZi1ieToga2FpIHpoYW5nIDx6aGFuZ2thaWhlYkAxMjYuY29tPgo+PiAtLS0KPj4g
IHBhY2thZ2Uva2VybmVsL2xpbnV4L21vZHVsZXMvbmV0ZGV2aWNlcy5tayB8IDMyICsrKysrKysr
KysrKysrKysrKysrKysKPj4gIDEgZmlsZSBjaGFuZ2VkLCAzMiBpbnNlcnRpb25zKCspCj4+IAo+
PiBkaWZmIC0tZ2l0IGEvcGFja2FnZS9rZXJuZWwvbGludXgvbW9kdWxlcy9uZXRkZXZpY2VzLm1r
IGIvcGFja2FnZS9rZXJuZWwvbGludXgvbW9kdWxlcy9uZXRkZXZpY2VzLm1rCj4+IGluZGV4IDZl
YTJmMWRmODkuLmNlMDNhZTk5OGUgMTAwNjQ0Cj4+IC0tLSBhL3BhY2thZ2Uva2VybmVsL2xpbnV4
L21vZHVsZXMvbmV0ZGV2aWNlcy5tawo+PiArKysgYi9wYWNrYWdlL2tlcm5lbC9saW51eC9tb2R1
bGVzL25ldGRldmljZXMubWsKPj4gQEAgLTY0Miw2ICs2NDIsMzggQEAgZW5kZWYKPj4gICQoZXZh
bCAkKGNhbGwgS2VybmVsUGFja2FnZSxpeGdiZXZmKSkKPj4gIAo+PiAgCj4+ICtkZWZpbmUgS2Vy
bmVsUGFja2FnZS9pNDBlCj4+ICsgIFNVQk1FTlU6PSQoTkVUV09SS19ERVZJQ0VTX01FTlUpCj4+
ICsgIFRJVExFOj1JbnRlbChSKSBFdGhlcm5ldCBDb250cm9sbGVyIFhMNzEwIEZhbWlseSBzdXBw
b3J0Cj4+ICsgIERFUEVORFM6PUBQQ0lfU1VQUE9SVCAra21vZC1tZGlvICtrbW9kLXB0cAo+PiAr
ICBLQ09ORklHOj1DT05GSUdfSTQwRQo+PiArICBGSUxFUzo9JChMSU5VWF9ESVIpL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZS5rbwo+PiArICBBVVRPTE9BRDo9JChjYWxsIEF1
dG9Mb2FkLDM1LGk0MGUpCj4+ICtlbmRlZgo+PiArCj4+ICtkZWZpbmUgS2VybmVsUGFja2FnZS9p
NDBlL2Rlc2NyaXB0aW9uCj4+ICsgS2VybmVsIG1vZHVsZXMgZm9yIEludGVsKFIpIEV0aGVybmV0
IENvbnRyb2xsZXIgWEw3MTAgRmFtaWx5IHN1cHBvcnQuCj4+ICtlbmRlZgo+PiArCj4+ICskKGV2
YWwgJChjYWxsIEtlcm5lbFBhY2thZ2UsaTQwZSkpCj4+ICsKPj4gKwo+PiArZGVmaW5lIEtlcm5l
bFBhY2thZ2UvaTQwZXZmCj4+ICsgIFNVQk1FTlU6PSQoTkVUV09SS19ERVZJQ0VTX01FTlUpCj4+
ICsgIFRJVExFOj1JbnRlbChSKSBFdGhlcm5ldCBBZGFwdGl2ZSBWaXJ0dWFsIEZ1bmN0aW9uIHN1
cHBvcnQKPj4gKyAgREVQRU5EUzo9QFBDSV9TVVBQT1JUCj4+ICsgIEtDT05GSUc6PUNPTkZJR19J
NDBFVkYKPj4gKyAgRklMRVM6PSQoTElOVVhfRElSKS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pNDBldmYvaTQwZXZmLmtvCj4+ICsgIEFVVE9MT0FEOj0kKGNhbGwgQXV0b0xvYWQsMzUsaTQw
ZXZmKQo+PiArZW5kZWYKPj4gKwo+PiArZGVmaW5lIEtlcm5lbFBhY2thZ2UvaTQwZXZmL2Rlc2Ny
aXB0aW9uCj4+ICsgS2VybmVsIG1vZHVsZXMgZm9yIEludGVsKFIpIEV0aGVybmV0IEFkYXB0aXZl
IFZpcnR1YWwgRnVuY3Rpb24gc3VwcG9ydC4KPj4gK2VuZGVmCj4+ICsKPj4gKyQoZXZhbCAkKGNh
bGwgS2VybmVsUGFja2FnZSxpNDBldmYpKQo+PiArCj4+ICsKPj4gIGRlZmluZSBLZXJuZWxQYWNr
YWdlL2I0NAo+PiAgICBUSVRMRTo9QnJvYWRjb20gNDR4eCBkcml2ZXIKPj4gICAgS0NPTkZJRzo9
Q09ORklHX0I0NAo+PiAtLSAKPj4gMi4xNy4xCj4+IAo+PiAKPj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gb3BlbndydC1kZXZlbCBtYWlsaW5nIGxp
c3QKPj4gb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwo+PiBodHRwczovL2xpc3RzLm9w
ZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
------=_Part_45500_1406854803.1588826116396
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: base64

PGRpdiBzdHlsZT0ibGluZS1oZWlnaHQ6MS43O2NvbG9yOiMwMDAwMDA7Zm9udC1zaXplOjE0cHg7
Zm9udC1mYW1pbHk6QXJpYWwiPjxwIHN0eWxlPSJtYXJnaW46IDA7Ij48c3BhbiBzdHlsZT0iZm9u
dC1mYW1pbHk6IGFyaWFsOyB3aGl0ZS1zcGFjZTogcHJlLXdyYXA7Ij5BdCAyMDIwLTA1LTA2IDE5
OjUyOjQ3LCAiRGFuaWVsIEdvbGxlIiAmbHQ7ZGFuaWVsQG1ha3JvdG9waWEub3JnJmd0OyB3cm90
ZTo8L3NwYW4+PC9wPjxwcmU+Jmd0O09uIFdlZCwgTWF5IDA2LCAyMDIwIGF0IDEwOjUxOjE3QU0g
KzAwMDAsIHpoYW5na2FpaGViQDEyNi5jb20gd3JvdGU6CiZndDsmZ3Q7IEZyb206IGthaSB6aGFu
ZyAmbHQ7emhhbmdrYWloZWJAMTI2LmNvbSZndDsKJmd0OwomZ3Q7TXVzdCBoYXZlIGJlZW4gYSB0
b28gYml0IGVhcmx5IGZvciBtZSB0b2RheSwgYnV0IGFwYXJ0IGZyb20gdGhlIG1pc3NpbmcKJmd0
O2NvbW1pdCBkZXNjcmlwdGlvbiBhbmQgJ2tlcm5lbDogJyBwcmVmaXggb2YgdGhlIGNvbW1pdCB0
aXRsZXMsIEkgaGF2ZQomZ3Q7YWxzbyBqdXN0IG5vdGljZWQgdGhhdCB0aGlzIGhhcyBhbHJlYWR5
IGJlZW4gYWRkZWQgcmVjZW50bHkgd2l0aAomZ3Q7CiZndDtjb21taXQgNWQ4MWIyOGE4MjlhYzIw
ZmI2MDk5MWU3MWVlN2E3YzUzZDE0ZmQ1OAomZ3Q7QXV0aG9yOiBYaWFvYm8gVGlhbiAmbHQ7cGV0
ZXJ3aWxsY25AZ21haWwuY29tJmd0OwomZ3Q7RGF0ZTogICBXZWQgQXByIDEgMTI6MTk6MzUgMjAy
MCArMDgwMAomZ3Q7CiZndDtrZXJuZWw6IHN1cHBvcnQgaW50ZWwgWDd4eCAxMC80MEdiRSBhZGFw
dGVycwomZ3Q7CiZndDtTaWduZWQtb2ZmLWJ5OiBYaWFvYm8gVGlhbiAmbHQ7cGV0ZXJ3aWxsY25A
Z21haWwuY29tJmd0OwomZ3Q7W0FkZCBpNDBldmYvaTQwZXZmLmtvIGFuZCBzZXRlY3QgQ09ORklH
X0lBVkZdCiZndDtTaWduZWQtb2ZmLWJ5OiBIYXVrZSBNZWhydGVucyAmbHQ7aGF1a2VAaGF1a2Ut
bS5kZSZndDsKJmd0Owo8ZGl2PiZndDs8L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2Pkkgc2F3IHRo
ZSBjb21taXQgYnkgWGlhb2JvIFRpYW4gYWZ0ZXIgdXBkYXRpbmcsIHRoYW5rcyE8L2Rpdj4mZ3Q7
Jmd0OyAKJmd0OyZndDsgU2lnbmVkLW9mZi1ieToga2FpIHpoYW5nICZsdDt6aGFuZ2thaWhlYkAx
MjYuY29tJmd0OwomZ3Q7Jmd0OyAtLS0KJmd0OyZndDsgIHBhY2thZ2Uva2VybmVsL2xpbnV4L21v
ZHVsZXMvbmV0ZGV2aWNlcy5tayB8IDMyICsrKysrKysrKysrKysrKysrKysrKysKJmd0OyZndDsg
IDEgZmlsZSBjaGFuZ2VkLCAzMiBpbnNlcnRpb25zKCspCiZndDsmZ3Q7IAomZ3Q7Jmd0OyBkaWZm
IC0tZ2l0IGEvcGFja2FnZS9rZXJuZWwvbGludXgvbW9kdWxlcy9uZXRkZXZpY2VzLm1rIGIvcGFj
a2FnZS9rZXJuZWwvbGludXgvbW9kdWxlcy9uZXRkZXZpY2VzLm1rCiZndDsmZ3Q7IGluZGV4IDZl
YTJmMWRmODkuLmNlMDNhZTk5OGUgMTAwNjQ0CiZndDsmZ3Q7IC0tLSBhL3BhY2thZ2Uva2VybmVs
L2xpbnV4L21vZHVsZXMvbmV0ZGV2aWNlcy5tawomZ3Q7Jmd0OyArKysgYi9wYWNrYWdlL2tlcm5l
bC9saW51eC9tb2R1bGVzL25ldGRldmljZXMubWsKJmd0OyZndDsgQEAgLTY0Miw2ICs2NDIsMzgg
QEAgZW5kZWYKJmd0OyZndDsgICQoZXZhbCAkKGNhbGwgS2VybmVsUGFja2FnZSxpeGdiZXZmKSkK
Jmd0OyZndDsgIAomZ3Q7Jmd0OyAgCiZndDsmZ3Q7ICtkZWZpbmUgS2VybmVsUGFja2FnZS9pNDBl
CiZndDsmZ3Q7ICsgIFNVQk1FTlU6PSQoTkVUV09SS19ERVZJQ0VTX01FTlUpCiZndDsmZ3Q7ICsg
IFRJVExFOj1JbnRlbChSKSBFdGhlcm5ldCBDb250cm9sbGVyIFhMNzEwIEZhbWlseSBzdXBwb3J0
CiZndDsmZ3Q7ICsgIERFUEVORFM6PUBQQ0lfU1VQUE9SVCAra21vZC1tZGlvICtrbW9kLXB0cAom
Z3Q7Jmd0OyArICBLQ09ORklHOj1DT05GSUdfSTQwRQomZ3Q7Jmd0OyArICBGSUxFUzo9JChMSU5V
WF9ESVIpL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZS5rbwomZ3Q7Jmd0OyAr
ICBBVVRPTE9BRDo9JChjYWxsIEF1dG9Mb2FkLDM1LGk0MGUpCiZndDsmZ3Q7ICtlbmRlZgomZ3Q7
Jmd0OyArCiZndDsmZ3Q7ICtkZWZpbmUgS2VybmVsUGFja2FnZS9pNDBlL2Rlc2NyaXB0aW9uCiZn
dDsmZ3Q7ICsgS2VybmVsIG1vZHVsZXMgZm9yIEludGVsKFIpIEV0aGVybmV0IENvbnRyb2xsZXIg
WEw3MTAgRmFtaWx5IHN1cHBvcnQuCiZndDsmZ3Q7ICtlbmRlZgomZ3Q7Jmd0OyArCiZndDsmZ3Q7
ICskKGV2YWwgJChjYWxsIEtlcm5lbFBhY2thZ2UsaTQwZSkpCiZndDsmZ3Q7ICsKJmd0OyZndDsg
KwomZ3Q7Jmd0OyArZGVmaW5lIEtlcm5lbFBhY2thZ2UvaTQwZXZmCiZndDsmZ3Q7ICsgIFNVQk1F
TlU6PSQoTkVUV09SS19ERVZJQ0VTX01FTlUpCiZndDsmZ3Q7ICsgIFRJVExFOj1JbnRlbChSKSBF
dGhlcm5ldCBBZGFwdGl2ZSBWaXJ0dWFsIEZ1bmN0aW9uIHN1cHBvcnQKJmd0OyZndDsgKyAgREVQ
RU5EUzo9QFBDSV9TVVBQT1JUCiZndDsmZ3Q7ICsgIEtDT05GSUc6PUNPTkZJR19JNDBFVkYKJmd0
OyZndDsgKyAgRklMRVM6PSQoTElOVVhfRElSKS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
NDBldmYvaTQwZXZmLmtvCiZndDsmZ3Q7ICsgIEFVVE9MT0FEOj0kKGNhbGwgQXV0b0xvYWQsMzUs
aTQwZXZmKQomZ3Q7Jmd0OyArZW5kZWYKJmd0OyZndDsgKwomZ3Q7Jmd0OyArZGVmaW5lIEtlcm5l
bFBhY2thZ2UvaTQwZXZmL2Rlc2NyaXB0aW9uCiZndDsmZ3Q7ICsgS2VybmVsIG1vZHVsZXMgZm9y
IEludGVsKFIpIEV0aGVybmV0IEFkYXB0aXZlIFZpcnR1YWwgRnVuY3Rpb24gc3VwcG9ydC4KJmd0
OyZndDsgK2VuZGVmCiZndDsmZ3Q7ICsKJmd0OyZndDsgKyQoZXZhbCAkKGNhbGwgS2VybmVsUGFj
a2FnZSxpNDBldmYpKQomZ3Q7Jmd0OyArCiZndDsmZ3Q7ICsKJmd0OyZndDsgIGRlZmluZSBLZXJu
ZWxQYWNrYWdlL2I0NAomZ3Q7Jmd0OyAgICBUSVRMRTo9QnJvYWRjb20gNDR4eCBkcml2ZXIKJmd0
OyZndDsgICAgS0NPTkZJRzo9Q09ORklHX0I0NAomZ3Q7Jmd0OyAtLSAKJmd0OyZndDsgMi4xNy4x
CiZndDsmZ3Q7IAomZ3Q7Jmd0OyAKJmd0OyZndDsgX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KJmd0OyZndDsgb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QK
Jmd0OyZndDsgb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwomZ3Q7Jmd0OyBodHRwczov
L2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo8L3ByZT48
L2Rpdj4=
------=_Part_45500_1406854803.1588826116396--



--===============3779308673316037179==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3779308673316037179==--


