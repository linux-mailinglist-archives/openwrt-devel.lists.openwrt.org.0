Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26741F8A70
	for <lists+openwrt-devel@lfdr.de>; Tue, 12 Nov 2019 09:23:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Q6qLx9dwGBf2fECHRHujmFpXDBgVe5fP07GOFfte+o8=; b=EQFX0OUctAAsoErKm16AEQebm
	2PB6L/ZnMto/RTu4WwAsQDEvhaAkaNxtFdZc783LG4cYJObxHZWlo4eAn+lLq7O9AF2qRU7wjqmKP
	dqSb+b/XB3+Xgbf3hDiZqqvKmmQNxoFcpB3QA5/zRvyKQhsfRtU+8Nup3p1WgPv5qbQmCqg2DthIX
	0q3wovq08P0t1UoeqpYISt1M9r8WtIpMRc9rQwOAaWTmVTA8SkUg6jeLVvGOrwaNJxxd9dwmWYHxp
	U+n25AktIeynAQkNi1elr7AXQneylGS+6vwS5vU25ZJPCG3mmbTASwOS8PZnoCPso/dd5M8s/x4kq
	KAYk2u0eA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iURRx-0004a5-81; Tue, 12 Nov 2019 08:22:57 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iURRm-0004ZU-Ek
 for openwrt-devel@lists.openwrt.org; Tue, 12 Nov 2019 08:22:48 +0000
X-Originating-IP: 72.234.165.80
Received: from [192.168.200.110] (udp050203uds.hawaiiantel.net [72.234.165.80])
 (Authenticated sender: mail@aparcar.org)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 364B740009;
 Tue, 12 Nov 2019 08:22:33 +0000 (UTC)
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>,
 openwrt-devel@lists.openwrt.org
References: <20191112081625.27695-1-ynezz@true.cz>
From: Paul Spooren <mail@aparcar.org>
Message-ID: <25c6e67c-7c9f-4c7f-bc30-1645c05d12e7@aparcar.org>
Date: Mon, 11 Nov 2019 22:22:31 -1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191112081625.27695-1-ynezz@true.cz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_002246_771099_EF57BEF9 
X-CRM114-Status: GOOD (  17.30  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] build: make GCC version 6+ minimal host
 build requirement
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

TG9va3MgZ29vZCB0byBtZSwgSSByYW4gaW50byB0aGlzIGlzc3VlIGJlZm9yZSBhbmQgd291bGQg
YXBwcmVjaWF0ZSAKbW92aW5nIGZvcndhcmQgdG8gNi4KCk9uIDExLzExLzE5IDEwOjE2IFBNLCBQ
ZXRyIMWgdGV0aWFyIHdyb3RlOgo+IEN1cnJlbnRseSBtaW5pbWFsIEdOVSBzdXBwb3J0ZWQgR0ND
IHZlcnNpb24gaXMgNyAoZnJvbSBNYXkgMiwgMjAxNyksIGJ1aWxkYm90cwo+IGFyZSB1c2luZyBk
ZWZhdWx0IEdDQyB2ZXJzaW9uIDYgb24gRGViaWFuIDkgKG9sZCBzdGFibGUpLCBjdXJyZW50IERl
Ymlhbgo+IHN0YWJsZSAxMCBoYXMgR0NDIHZlcnNpb24gOC4KPgo+IFNpZ25lZC1vZmYtYnk6IFBl
dHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+Cj4gLS0tCj4KPiBXaGlsZSBhZGRpbmcgQ0kgc3Vw
cG9ydCBpbiBDIGJhc2VkIHByb2plY3RzLCBJJ3ZlIHN0YXJ0ZWQgYWRkaW5nIC1XZXh0cmEgYXMK
PiB3ZWxsLCB3aGljaCBzZWVtcyB0byB3b3JrIGp1c3QgZmluZSBmb3IgZ2NjNissIGJ1dCBpdCdz
IGFwcGFyZW50bHkgY2F1c2luZwo+IGlzc3VlcyB3aXRoIG9sZGVyIEdDQ3MgbGlrZSBmb3IgZXhh
bXBsZSBnY2MgNC44LjVbMV0gb24gQ2VudE9TIDcuCj4KPiBBbHRob3VnaCBpdCdzIGNlcnRhaW5s
eSBwb3NzaWJsZSB0byBmaXggdGhvc2UgaXNzdWVzIGFuZCBtYWtlIGdjYyA0IHVzYWJsZSwgSQo+
IHRoaW5rLCB0aGF0IGl0J3Mgbm90IHdvcnRoIHRoZSBhZGRpdGlvbmFsIGVmZm9ydCBhbmQgcmVz
b3VyY2VzIGFueW1vcmUuCj4KPiAxLiBodHRwczovL2dpdGh1Yi5jb20vb3BlbndydC9vcGVud3J0
L2NvbW1pdC80YmE4ZjdiMWVmMWU0YzA2MDcxODVhNDFjMDZiNTE5MjhjNjI1ZDhiCj4KPiAgIFJF
QURNRSAgICAgICAgICAgICAgICAgIHwgIDIgKy0KPiAgIGluY2x1ZGUvcHJlcmVxLWJ1aWxkLm1r
IHwgMTggKysrKy0tLS0tLS0tLS0tLS0tCj4gICAyIGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9u
cygrKSwgMTUgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvUkVBRE1FIGIvUkVBRE1FCj4g
aW5kZXggYzg2N2MxZmE0ZGE4Li42ZDExZGQxMTg4ZmYgMTAwNjQ0Cj4gLS0tIGEvUkVBRE1FCj4g
KysrIGIvUkVBRE1FCj4gQEAgLTExLDcgKzExLDcgQEAgVG8gYnVpbGQgeW91ciBvd24gZmlybXdh
cmUgeW91IG5lZWQgYSBMaW51eCwgQlNEIG9yIE1hY09TWCBzeXN0ZW0gKGNhc2UKPiAgIHNlbnNp
dGl2ZSBmaWxlc3lzdGVtIHJlcXVpcmVkKS4gQ3lnd2luIGlzIHVuc3VwcG9ydGVkIGJlY2F1c2Ug
b2YgdGhlIGxhY2sKPiAgIG9mIGEgY2FzZSBzZW5zaXRpdmUgZmlsZSBzeXN0ZW0uCj4gICAKPiAt
WW91IG5lZWQgZ2NjLCBiaW51dGlscywgYnppcDIsIGZsZXgsIHB5dGhvbjMuNSssIHBlcmwsIG1h
a2UsIGZpbmQsIGdyZXAsIGRpZmYsCj4gK1lvdSBuZWVkIGdjYzYrLCBiaW51dGlscywgYnppcDIs
IGZsZXgsIHB5dGhvbjMuNSssIHBlcmwsIG1ha2UsIGZpbmQsIGdyZXAsIGRpZmYsCj4gICB1bnpp
cCwgZ2F3aywgZ2V0b3B0LCBzdWJ2ZXJzaW9uLCBsaWJ6LWRldiBhbmQgbGliYyBoZWFkZXJzIGlu
c3RhbGxlZC4KPiAgIAo+ICAgMS4gUnVuICIuL3NjcmlwdHMvZmVlZHMgdXBkYXRlIC1hIiB0byBv
YnRhaW4gYWxsIHRoZSBsYXRlc3QgcGFja2FnZSBkZWZpbml0aW9ucwo+IGRpZmYgLS1naXQgYS9p
bmNsdWRlL3ByZXJlcS1idWlsZC5tayBiL2luY2x1ZGUvcHJlcmVxLWJ1aWxkLm1rCj4gaW5kZXgg
NGM1OTkxMDA1NjM0Li41OGNiYzA2NzhmYTEgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS9wcmVyZXEt
YnVpbGQubWsKPiArKysgYi9pbmNsdWRlL3ByZXJlcS1idWlsZC5tawo+IEBAIC0yNywxMiArMjcs
NyBAQCAkKGV2YWwgJChjYWxsIFRlc3RIb3N0Q29tbWFuZCxwcm9wZXItdW1hc2ssIFwKPiAgIAl1
bWFzayB8IGdyZXAgLXhFIDA/MFswMTJdWzAxMl0pKQo+ICAgCj4gICAkKGV2YWwgJChjYWxsIFNl
dHVwSG9zdENvbW1hbmQsZ2NjLCBcCj4gLQlQbGVhc2UgaW5zdGFsbCB0aGUgR05VIEMgQ29tcGls
ZXIgKGdjYykgNC44IG9yIGxhdGVyLCBcCj4gLQkkKENDKSAtZHVtcHZlcnNpb24gfCBncmVwIC1F
ICdeKDRcLls4LTldfFs1LTldXC4/KScsIFwKPiAtCWdjYyAtZHVtcHZlcnNpb24gfCBncmVwIC1F
ICdeKDRcLls4LTldfFs1LTldXC4/KScsIFwKPiAtCWdjYzQ4IC0tdmVyc2lvbiB8IGdyZXAgZ2Nj
LCBcCj4gLQlnY2M0OSAtLXZlcnNpb24gfCBncmVwIGdjYywgXAo+IC0JZ2NjNSAtLXZlcnNpb24g
fCBncmVwIGdjYywgXAo+ICsJUGxlYXNlIGluc3RhbGwgdGhlIEdOVSBDIENvbXBpbGVyIChnY2Mp
IDYgb3IgbGF0ZXIsIFwKPiAgIAlnY2M2IC0tdmVyc2lvbiB8IGdyZXAgZ2NjLCBcCj4gICAJZ2Nj
NyAtLXZlcnNpb24gfCBncmVwIGdjYywgXAo+ICAgCWdjYzggLS12ZXJzaW9uIHwgZ3JlcCBnY2Ms
IFwKPiBAQCAtNDAsMTggKzM1LDEzIEBAICQoZXZhbCAkKGNhbGwgU2V0dXBIb3N0Q29tbWFuZCxn
Y2MsIFwKPiAgIAlnY2MgLS12ZXJzaW9uIHwgZ3JlcCAtRSAnQXBwbGUuKExMVk18Y2xhbmcpJyAp
KQo+ICAgCj4gICAkKGV2YWwgJChjYWxsIFRlc3RIb3N0Q29tbWFuZCx3b3JraW5nLWdjYywgXAo+
IC0JXG5QbGVhc2UgcmVpbnN0YWxsIHRoZSBHTlUgQyBDb21waWxlciAoNC44IG9yIGxhdGVyKSAt
IFwKPiArCVxuUGxlYXNlIHJlaW5zdGFsbCB0aGUgR05VIEMgQ29tcGlsZXIgKDYgb3IgbGF0ZXIp
IC0gXAo+ICAgCWl0IGFwcGVhcnMgdG8gYmUgYnJva2VuLCBcCj4gICAJZWNobyAnaW50IG1haW4o
aW50IGFyZ2MsIGNoYXIgKiphcmd2KSB7IHJldHVybiAwOyB9JyB8IFwKPiAgIAkJZ2NjIC14IGMg
LW8gJChUTVBfRElSKS9hLm91dCAtKSkKPiAgIAo+ICAgJChldmFsICQoY2FsbCBTZXR1cEhvc3RD
b21tYW5kLGcrKywgXAo+IC0JUGxlYXNlIGluc3RhbGwgdGhlIEdOVSBDKysgQ29tcGlsZXIgKGcr
KykgNC44IG9yIGxhdGVyLCBcCj4gLQkkKENYWCkgLWR1bXB2ZXJzaW9uIHwgZ3JlcCAtRSAnXig0
XC5bOC05XXxbNS05XVwuPyknLCBcCj4gLQlnKysgLWR1bXB2ZXJzaW9uIHwgZ3JlcCAtRSAnXig0
XC5bOC05XXxbNS05XVwuPyknLCBcCj4gLQlnKys0OCAtLXZlcnNpb24gfCBncmVwIGcrKywgXAo+
IC0JZysrNDkgLS12ZXJzaW9uIHwgZ3JlcCBnKyssIFwKPiAtCWcrKzUgLS12ZXJzaW9uIHwgZ3Jl
cCBnKyssIFwKPiArCVBsZWFzZSBpbnN0YWxsIHRoZSBHTlUgQysrIENvbXBpbGVyIChnKyspIDYg
b3IgbGF0ZXIsIFwKPiAgIAlnKys2IC0tdmVyc2lvbiB8IGdyZXAgZysrLCBcCj4gICAJZysrNyAt
LXZlcnNpb24gfCBncmVwIGcrKywgXAo+ICAgCWcrKzggLS12ZXJzaW9uIHwgZ3JlcCBnKyssIFwK
PiBAQCAtNTksNyArNDksNyBAQCAkKGV2YWwgJChjYWxsIFNldHVwSG9zdENvbW1hbmQsZysrLCBc
Cj4gICAJZysrIC0tdmVyc2lvbiB8IGdyZXAgLUUgJ0FwcGxlLihMTFZNfGNsYW5nKScgKSkKPiAg
IAo+ICAgJChldmFsICQoY2FsbCBUZXN0SG9zdENvbW1hbmQsd29ya2luZy1nKyssIFwKPiAtCVxu
UGxlYXNlIHJlaW5zdGFsbCB0aGUgR05VIEMrKyBDb21waWxlciAoNC44IG9yIGxhdGVyKSAtIFwK
PiArCVxuUGxlYXNlIHJlaW5zdGFsbCB0aGUgR05VIEMrKyBDb21waWxlciAoNiBvciBsYXRlcikg
LSBcCj4gICAJaXQgYXBwZWFycyB0byBiZSBicm9rZW4sIFwKPiAgIAllY2hvICdpbnQgbWFpbihp
bnQgYXJnYywgY2hhciAqKmFyZ3YpIHsgcmV0dXJuIDA7IH0nIHwgXAo+ICAgCQlnKysgLXggYysr
IC1vICQoVE1QX0RJUikvYS5vdXQgLSAtbHN0ZGMrKyAmJiBcCj4KPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IG9wZW53cnQtZGV2ZWwgbWFpbGluZyBs
aXN0Cj4gb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwo+IGh0dHBzOi8vbGlzdHMub3Bl
bndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlz
dApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5v
cmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
