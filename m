Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A01D018DA04
	for <lists+openwrt-devel@lfdr.de>; Fri, 20 Mar 2020 22:11:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	To:From:Date:In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=TOA6Ec5AB8n8MtkhMELjA/d50G2aMSCtjlhmkWfmg4w=; b=GeximRuaBUtotz
	0XtDExtkgTChfRDnunMxIYWGiwry3kEC3DuSmTDdSif1lucVoYfpkueq0klnxm4HRowCT/CcnzdSD
	+Wfsp/dcgAjfnQ9QKm3Ld+QL3s4YAEvSAQ9pLVWgILfeaYMlVv/vre5kRLod2PRzwU/DFfFWs0MUh
	3oz6LcLx4WF3Ye2UzbB6supQMw+5aXnv1jNOQZNacczNpHjE4p0dgULyEgHMhyLH0RYVMVoeYBZnf
	bRCb7ZcOxdB8rEQgscxQyk+GHFQZBz+3xctw+b/zuFzhR+UZ/LPA93a/beZFXl1mNrKY1tKiFn8q5
	/+mGh0e3NLPp7/iQIWcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFOvG-0003c1-3K; Fri, 20 Mar 2020 21:11:18 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFOv9-0003bY-Il
 for openwrt-devel@lists.openwrt.org; Fri, 20 Mar 2020 21:11:13 +0000
Received: from localhost (udp057936uds.hawaiiantel.net [72.234.241.177])
 (Authenticated sender: mail@aparcar.org)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id C0A29240003;
 Fri, 20 Mar 2020 21:11:03 +0000 (UTC)
In-Reply-To: <20200319112206.620246-1-robimarko@gmail.com>
Date: Fri, 20 Mar 2020 11:09:56 -1000
From: "Paul Spooren" <mail@aparcar.org>
To: "Robert Marko" <robert.marko@sartura.hr>, <openwrt-devel@lists.openwrt.org>
Message-Id: <C1FYY4LQF4LT.2MRJ5HFOPNKY7@tb>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_141111_755093_B1C0CEDF 
X-CRM114-Status: GOOD (  15.87  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] tools: squashfskit4: fix build with
 GCC10
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
Cc: Robert Marko <robert.marko@sartura.hr>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGksCgp3YW4ndCBzcXVhc2hmc2tpdDQgY3JlYXRlZCBhcyBhIHdvcmthcm91bmQgZm9yIGFuIGlu
YWN0aXZlIHVwc3RyZWFtCm1haW50YWluZXI/IFdvdWxkbid0IGl0IG1ha2Ugc2Vuc2UgdG8gbW92
ZSBiYWNrIHRvIHVwc3RyZWFtIG5vdyB0aGF0IGl0CmlzIG1vcmUgdXAgdG8gZGF0ZSB0aGFuIG91
ciBmb3JrPwoKQmVzdCwKUGF1bAoKT24gVGh1IE1hciAxOSwgMjAyMCBhdCAyOjIyIEFNIFBTVCwg
Um9iZXJ0IE1hcmtvIHdyb3RlOgo+IEZyb206IFJvYmVydCBNYXJrbyA8cm9iZXJ0Lm1hcmtvQHNh
cnR1cmEuaHI+Cj4KPiBJbiBvcmRlciB0byBidWlsZCBzcXVhc2hmc2tpdCB3aXRoIEdDQzEwLCB0
aGlzIGJhY2twb3J0IGZyb20gdXBzdHJlYW0gaXMKPiBuZWVkZWQuCj4KPiBTaWduZWQtb2ZmLWJ5
OiBSb2JlcnQgTWFya28gPHJvYmVydC5tYXJrb0BzYXJ0dXJhLmhyPgo+IC0tLQo+IC4uLjAwMi1m
aXgtYnVpbGQtZmFpbHVyZS1hZ2FpbnN0LWdjYy0xMC5wYXRjaCB8IDQzICsrKysrKysrKysrKysr
KysrKysKPiAxIGZpbGUgY2hhbmdlZCwgNDMgaW5zZXJ0aW9ucygrKQo+IGNyZWF0ZSBtb2RlIDEw
MDY0NAo+IHRvb2xzL3NxdWFzaGZza2l0NC9wYXRjaGVzLzAwMDItZml4LWJ1aWxkLWZhaWx1cmUt
YWdhaW5zdC1nY2MtMTAucGF0Y2gKPgo+IGRpZmYgLS1naXQKPiBhL3Rvb2xzL3NxdWFzaGZza2l0
NC9wYXRjaGVzLzAwMDItZml4LWJ1aWxkLWZhaWx1cmUtYWdhaW5zdC1nY2MtMTAucGF0Y2gKPiBi
L3Rvb2xzL3NxdWFzaGZza2l0NC9wYXRjaGVzLzAwMDItZml4LWJ1aWxkLWZhaWx1cmUtYWdhaW5z
dC1nY2MtMTAucGF0Y2gKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAu
LjQ2YzZhNWVhMGYKPiAtLS0gL2Rldi9udWxsCj4gKysrCj4gYi90b29scy9zcXVhc2hmc2tpdDQv
cGF0Y2hlcy8wMDAyLWZpeC1idWlsZC1mYWlsdXJlLWFnYWluc3QtZ2NjLTEwLnBhdGNoCj4gQEAg
LTAsMCArMSw0MyBAQAo+ICtGcm9tIGZlMmY1ZGE0YjBmODk5NDE2OWM1M2U4NGI3Y2I4YTBmZWVm
Yzk3YjUgTW9uIFNlcCAxNyAwMDowMDowMCAyMDAxCj4gK0Zyb206IFNlcmdlaSBUcm9maW1vdmlj
aCA8c2x5Zm94QGdlbnRvby5vcmc+Cj4gK0RhdGU6IFN1biwgMjYgSmFuIDIwMjAgMTg6MzU6MTMg
KzAwMDAKPiArU3ViamVjdDogW1BBVENIXSBzcXVhc2hmcy10b29sczogZml4IGJ1aWxkIGZhaWx1
cmUgYWdhaW5zdCBnY2MtMTAKPiArTUlNRS1WZXJzaW9uOiAxLjAKPiArQ29udGVudC1UeXBlOiB0
ZXh0L3BsYWluOyBjaGFyc2V0PVVURi04Cj4gK0NvbnRlbnQtVHJhbnNmZXItRW5jb2Rpbmc6IDhi
aXQKPiArCj4gK09uIGdjYy0xMCAoYW5kIGdjYy05IC1mbm8tY29tbW9uKSBidWlsZCBmYWlscyBh
czoKPiArCj4gK2BgYAo+ICtjYyAuLi4gLW8gbWtzcXVhc2hmcwo+ICtsZDogcmVhZF9mcy5vOigu
YnNzKzB4MCk6Cj4gKyBtdWx0aXBsZSBkZWZpbml0aW9uIG9mIGBmd3JpdGVyX2J1ZmZlcic7IG1r
c3F1YXNoZnMubzooLmJzcysweDQwMGM5MCk6Cj4gZmlyc3QgZGVmaW5lZCBoZXJlCj4gK2xkOiBy
ZWFkX2ZzLm86KC5ic3MrMHg4KToKPiArIG11bHRpcGxlIGRlZmluaXRpb24gb2YgYGJ3cml0ZXJf
YnVmZmVyJzsgbWtzcXVhc2hmcy5vOiguYnNzKzB4NDAwYzk4KToKPiBmaXJzdCBkZWZpbmVkIGhl
cmUKPiArYGBgCj4gKwo+ICtnY2MtMTAgd2lsbCBjaGFuZ2UgdGhlIGRlZmF1bHQgZnJvbSAtZmNv
bW1vbiB0byBmbm8tY29tbW9uOgo+ICtodHRwczovL2djYy5nbnUub3JnL1BSODU2NzguCj4gKwo+
ICtUaGUgZXJyb3IgYWxzbyBoYXBwZW5zIGlmIENGTEFHUz0tZm5vLWNvbW1vbiBwYXNzZWQgZXhw
bGljaXRseS4KPiArCj4gK1JlcG9ydGVkLWJ5OiBUb3JhbGYgRsO2cnN0ZXIKPiArQnVnOiBodHRw
czovL2J1Z3MuZ2VudG9vLm9yZy83MDY0NTYKPiArU2lnbmVkLW9mZi1ieTogU2VyZ2VpIFRyb2Zp
bW92aWNoIDxzbHlmb3hAZ2VudG9vLm9yZz4KPiArLS0tCj4gKyBzcXVhc2hmcy10b29scy9ta3Nx
dWFzaGZzLmggfCAyICstCj4gKyAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVs
ZXRpb24oLSkKPiArCj4gK2RpZmYgLS1naXQgYS9zcXVhc2hmcy10b29scy9ta3NxdWFzaGZzLmgg
Yi9zcXVhc2hmcy10b29scy9ta3NxdWFzaGZzLmgKPiAraW5kZXggMWJlZWZlZjcuLmI2NTAzMDYz
IDEwMDY0NAo+ICstLS0gYS9zcXVhc2hmcy10b29scy9ta3NxdWFzaGZzLmgKPiArKysrIGIvc3F1
YXNoZnMtdG9vbHMvbWtzcXVhc2hmcy5oCj4gK0BAIC0xNDMsNyArMTQzLDcgQEAgc3RydWN0IGFw
cGVuZF9maWxlIHsKPiArICNlbmRpZgo+ICsKPiArIGV4dGVybiBzdHJ1Y3QgY2FjaGUgKnJlYWRl
cl9idWZmZXIsICpmcmFnbWVudF9idWZmZXIsICpyZXNlcnZlX2NhY2hlOwo+ICstc3RydWN0IGNh
Y2hlICpid3JpdGVyX2J1ZmZlciwgKmZ3cml0ZXJfYnVmZmVyOwo+ICsrZXh0ZXJuIHN0cnVjdCBj
YWNoZSAqYndyaXRlcl9idWZmZXIsICpmd3JpdGVyX2J1ZmZlcjsKPiArIGV4dGVybiBzdHJ1Y3Qg
cXVldWUgKnRvX3JlYWRlciwgKnRvX2RlZmxhdGUsICp0b193cml0ZXIsICpmcm9tX3dyaXRlciwK
PiArICp0b19mcmFnLCAqbG9ja2VkX2ZyYWdtZW50LCAqdG9fcHJvY2Vzc19mcmFnOwo+ICsgZXh0
ZXJuIHN0cnVjdCBhcHBlbmRfZmlsZSAqKmZpbGVfbWFwcGluZzsKPiAtLQo+IDIuMjYuMC5yYzIK
Pgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBv
cGVud3J0LWRldmVsIG1haWxpbmcgbGlzdAo+IG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5v
cmcKPiBodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1k
ZXZlbAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9w
ZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcK
aHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
