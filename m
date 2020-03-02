Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 331FC175140
	for <lists+openwrt-devel@lfdr.de>; Mon,  2 Mar 2020 01:10:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ovB1Fh4TZTp1vd+nWdA2G9eNuudZWtCoiYtzAKPMknI=; b=uLs4zQI8P1G9zwPXEn5s1vOfc
	Sc+/sOo2iIVp3yNTPO2jD8qLwAKiwxh8Oy6XzvF+BdeZgDsJSjZxANZhgNQPkty6FRlmVDxJP/gRU
	CjEcd1XOYkg5cbgE1d+LpBqsZQHbYmWmdQjWhV9yIoah2Nxp91YjNkrsL+xDHzoYi++TEEMEAFafc
	TFVUhGCLb242ey9oVWideyvBjkj/cVG1OX926XHUET41QmMODyLNAHME2MvQdOw19zTliAFl0fDGe
	5T/IaxY9b2GsxyjPlteb/Ze6YTsvhyLrFXVZwPWlZaDaW+X0+SAMaUXIwQIg4LYOoZRcxU9o10JvO
	exSczvCmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8YfQ-00045Q-Ts; Mon, 02 Mar 2020 00:10:40 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8YfH-00044w-SS
 for openwrt-devel@lists.openwrt.org; Mon, 02 Mar 2020 00:10:33 +0000
X-Originating-IP: 72.234.241.177
Received: from [192.168.22.124] (udp057936uds.hawaiiantel.net [72.234.241.177])
 (Authenticated sender: mail@aparcar.org)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 37FB3E0009;
 Mon,  2 Mar 2020 00:10:19 +0000 (UTC)
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>
References: <20200301024850.1528027-1-mail@aparcar.org>
 <20200301123433.GD33354@meh.true.cz>
From: Paul Spooren <mail@aparcar.org>
Message-ID: <ccac7a1c-7d58-c206-3402-b233d5309a1a@aparcar.org>
Date: Sun, 1 Mar 2020 14:10:16 -1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200301123433.GD33354@meh.true.cz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_161032_058219_43F97E81 
X-CRM114-Status: GOOD (  13.88  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: Re: [OpenWrt-Devel] [PATCH v2] build: refactor JSON info files to
 `profiles.json`
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Ck9uIDAxLjAzLjIwIDAyOjM0LCBQZXRyIMWgdGV0aWFyIHdyb3RlOgo+IFBhdWwgU3Bvb3JlbiA8
bWFpbEBhcGFyY2FyLm9yZz4gWzIwMjAtMDItMjkgMTY6NDg6NTBdOgo+Cj4gRllJOgo+Cj4gICAk
IGdyZXAgSlNPTiAuY29uZmlnCj4gICBDT05GSUdfSlNPTl9PVkVSVklFV19JTUFHRV9JTkZPPXkK
Pgo+ICAgJCBjYXQgYmluL3RhcmdldHMvaW14Ni9nZW5lcmljL3Byb2ZpbGVzLmpzb24KPiAgIHt9
CgpUaGlzIHByb2JsZW0gb2NjdXJzIGFsc28gZm94IHg4NiwgdGhlIHByb2JsZW0gaXMgdGhhdCB0
aGUgaW1hZ2UgZnVuY3Rpb24gCmlzIG5vdCBwcm9wZXJseSBjYWxsZWQuIE1heWJlIGJlY2F1c2Ug
SU1YNiBvbmx5IG9mZmVyIGEgZGVmYXVsdCB0YXJnZXQgCmJ1dCBubyBwcm9maWxlcywgcmVzdWx0
aW5nIGluIGFuIGVtcHR5IHByb2ZpbGVzLmpzb24gZmlsZSAtIEkgdGhpbmsuIEkgCnN0YXJ0ZWQg
KGJhc2VkIG9uIEx5bnhpcyBkcmFmdCkgcmV3b3JraW5nIHRoZSB4ODYgc28gaXQgY3JlYXRlcyBh
bHNvIApKU09OIGZpbGVzWzBdLgoKSSdkIGJlIGluIGZhdm9yIHJld29ya2luZyAodW5pZnlpbmcp
IHRoZSB0YXJnZXQgc3BlY2lmaWMgY29kZSBpbnN0ZWFkIG9mIApleHRlbmRpbmcgdGhlIHNjcmlw
dCBsb2dpYyB0byBoYW5kbGUgY29ybmVyIGNhc2VzLiBBdCBsZWFzdCBpZiByZXdvcmtpbmcgCmlz
IHNvbWV0aGluZyB3aGF0IHNob3VsZCBiZSBkb25lIGFueXdheS4KCj4+IGRpZmYgLS1naXQgYS9j
b25maWcvQ29uZmlnLWJ1aWxkLmluIGIvY29uZmlnL0NvbmZpZy1idWlsZC5pbgo+PiBpbmRleCA2
YTZmYjI4ODJjLi41NzQyODM5OWFiIDEwMDY0NAo+PiAtLS0gYS9jb25maWcvQ29uZmlnLWJ1aWxk
LmluCj4+ICsrKyBiL2NvbmZpZy9Db25maWctYnVpbGQuaW4KPj4gQEAgLTcsMTIgKzcsMTQgQEAK
Pj4gICAKPj4gICBtZW51ICJHbG9iYWwgYnVpbGQgc2V0dGluZ3MiCj4+ICAgCj4+IC0JY29uZmln
IEpTT05fQUREX0lNQUdFX0lORk8KPj4gLQkJYm9vbCAiQ3JlYXRlIEpTT04gaW5mbyBmaWxlcyBw
ZXIgYnVpbGQgaW1hZ2UiCj4+ICsJY29uZmlnIEpTT05fT1ZFUlZJRVdfSU1BR0VfSU5GTwo+PiAr
CQlib29sICJDcmVhdGUgSlNPTiBpbmZvIGZpbGUgb3ZlcnZpZXcgcGVyIHRhcmdldCIKPj4gICAJ
CWRlZmF1bHQgQlVJTERCT1QKPj4gKwkJc2VsZWN0IEpTT05fQ1JFQVRFX0lNQUdFX0lORk8KPiBU
aGlzIGlzIHByb2JhYmx5IHNvbWUgbGVmdG92ZXIuClllcyEgUmVtb3ZlZCBpbiB2MyB0aGFua3Mh
Cj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2ltYWdlLm1rIGIvaW5jbHVkZS9pbWFnZS5tawo+PiBp
bmRleCBmZDA0ZDQwMjBiLi45MzNkODQ0ZThlIDEwMDY0NAo+PiAtLS0gYS9pbmNsdWRlL2ltYWdl
Lm1rCj4+ICsrKyBiL2luY2x1ZGUvaW1hZ2UubWsKPj4gQEAgLTU2OCw5ICs1NjgsOSBAQCBkZWZp
bmUgRGV2aWNlL0J1aWxkL2ltYWdlCj4+ICAgCj4+ICAgICAkKEJJTl9ESVIpLyQoY2FsbCBJTUFH
RV9OQU1FLCQoMSksJCgyKSk6ICQoS0RJUikvdG1wLyQoY2FsbCBJTUFHRV9OQU1FLCQoMSksJCgy
KSkKPj4gICAJY3AgJCReICQkQAo+PiAtCSQoaWYgJChDT05GSUdfSlNPTl9BRERfSU1BR0VfSU5G
TyksIFwKPj4gKwkkKGlmICQoQ09ORklHX0pTT05fT1ZFUlZJRVdfSU1BR0VfSU5GTyksIFwKPj4g
ICAJCURFVklDRV9JRD0iJChERVZJQ0VfTkFNRSkiIFwKPj4gLQkJQklOX0RJUj0iJChCSU5fRElS
KSIgXAo+PiArCQlCSU5fRElSPSIkKEtESVIpL3RtcCIgXAo+PiAgIAkJSU1BR0VfTkFNRT0iJChJ
TUFHRV9OQU1FKSIgXAo+PiAgIAkJSU1BR0VfVFlQRT0kKHdvcmQgMSwkKHN1YnN0IC4sICwkKDIp
KSkgXAo+PiAgIAkJSU1BR0VfUFJFRklYPSIkKElNQUdFX1BSRUZJWCkiIFwKPiBVbmhhbmRsZWQg
cmVtYXJrIGZyb20gdjEsIHRoaXMgcGFydCBzdGlsbCBuZWVkcyBzb21lIHdvcmssIHdoZW4gdGhh
dCBQeXRob24KPiBzY3JpcHQgZmFpbHMsIHRoZSBidWlsZCBzaG91bGQgZmFpbC4gUmVwcm9kdWNl
cjoKPgo+ICAgZWNobyBib3JrZW4gPiBzY3JpcHRzL2pzb25fYWRkX2ltYWdlX2luZm8ucHk7IG1h
a2UKSSB0cmllZCBhZGRpbmcgdGhpbmdzIGxpa2UgYHx8IGV4aXQgMWAgYnV0IG1ha2Ugc3R1YmJv
cm5seSBrZWVwcyBnb2luZy4gCkNhbiB5b3UgaGVscCBtZSBvdXQgaGVyZSBwbGVhc2U/Cj4+ICtv
dXRwdXRfanNvbiA9IHt9Cj4+ICsKPj4gK2Fzc2VydCB0YXJnZXRfZGlyLCAiVGFyZ2V0IGRpcmVj
dG9yeSByZXF1aXJlZCIKPj4gKwo+PiArZm9yIGpzb25fZmlsZSBpbiBpbnB1dF9kaXIuZ2xvYigi
Ki5qc29uIik6Cj4+ICsgICAgcHJvZmlsZV9pbmZvID0ganNvbi5sb2Fkcyhqc29uX2ZpbGUucmVh
ZF90ZXh0KCkpCj4+ICsgICAgaWYgbm90IG91dHB1dF9qc29uOgo+PiArICAgICAgICBvdXRwdXRf
anNvbiA9IHsKPj4gKyAgICAgICAgICAgICJtZXRhZGF0YV92ZXJzaW9uIjogMSwKPj4gKyAgICAg
ICAgICAgICJ0YXJnZXQiOiBwcm9maWxlX2luZm9bInRhcmdldCJdLAo+PiArICAgICAgICAgICAg
InZlcnNpb25fY29tbWl0IjogcHJvZmlsZV9pbmZvWyJ2ZXJzaW9uX2NvbW1pdCJdLAo+PiArICAg
ICAgICAgICAgInZlcnNpb25fbnVtYmVyIjogcHJvZmlsZV9pbmZvWyJ2ZXJzaW9uX251bWJlciJd
LAo+PiArICAgICAgICAgICAgInByb2ZpbGVzIjoge30sCj4+ICsgICAgICAgIH0KPiBJJ20gbm90
IGEgUHl0aG9uaXN0YSwgYnV0IHBlcmhhcHMgeW91IHdhbnQgdG8gaW5pdCB0aGUgb3V0cHV0X2pz
b24gZGljdCBqdXN0IGEKPiBmZXcgbGluZXMgYWJvdmUgYW5kIGdldCByaWQgb2YgdGhhdCB1bm5l
Y2VzYXJ5IGlmLgpUaGUgYHByb2ZpbGVfaW5mb2AgdmFyaWFibGUgaXMgb25seSBhdmFpbGFibGUg
YWZ0ZXIgcmVhZGluZyB0aGUgZmlyc3QgCkpTT04gcHJvZmlsZSBhbmQgdGhlcmVmb3JlIGluIHRo
ZSBsb29wLgoKWzBdOiBodHRwczovL2dpdGh1Yi5jb20vb3BlbndydC9vcGVud3J0L3B1bGwvMjc3
MgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53
cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0
cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
