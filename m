Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71BAF12E847
	for <lists+openwrt-devel@lfdr.de>; Thu,  2 Jan 2020 16:48:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=x/jR6PoBc+T+njs581Dztd67WcrQ1E4PFhPpjeZffi0=; b=QVyHnsSmP/DAGzYmPHY8dsglo
	TmMI19yMaOz69DvBpz5joZy2YbFDjxDrvlzUUl0V+kzYYAHjEkGorrN8m+F0UAzwmRYjBVv/8myjK
	26nSLgJ/MC82DfsW19Tw7GNZMOhGJhoTNZTbs+qPLc92T/kB3H4Fi7l8Ibp+22NFsSfVxFvckUEi4
	Ezf21ZNECVqv69rxLu6MVdFCHWenOn+79F0bxS/KZsVuONpU78YfY9EuvUNqNPDDG3L8qn1k/ORhk
	HwEiWmy6nOHrRv80NBVY4LwMUVWLbHS8TjxocqbBGnw2m891X+566Rr7bARFnrEhD+3qLJ6RUVn+O
	Yh1SIWEEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in2i3-0005dH-S0; Thu, 02 Jan 2020 15:48:27 +0000
Received: from welho-filter2.welho.com ([83.102.41.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in2hv-0005c8-Dg
 for openwrt-devel@lists.openwrt.org; Thu, 02 Jan 2020 15:48:21 +0000
Received: from localhost (localhost [127.0.0.1])
 by welho-filter2.welho.com (Postfix) with ESMTP id 31A34212AF;
 Thu,  2 Jan 2020 17:48:10 +0200 (EET)
X-Virus-Scanned: Debian amavisd-new at pp.htv.fi
Received: from welho-smtp1.welho.com ([IPv6:::ffff:83.102.41.84])
 by localhost (welho-filter2.welho.com [::ffff:83.102.41.24]) (amavisd-new,
 port 10024)
 with ESMTP id z4vlpuVs3rIn; Thu,  2 Jan 2020 17:48:09 +0200 (EET)
Received: from [192.168.1.180] (87-100-240-191.bb.dnainternet.fi
 [87.100.240.191])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by welho-smtp1.welho.com (Postfix) with ESMTPS id 21C89286;
 Thu,  2 Jan 2020 17:48:05 +0200 (EET)
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>,
 openwrt-devel@lists.openwrt.org
References: <20191231095801.GK70184@meh.true.cz>
 <46C7C775-CDBB-4E84-8C7F-A0F949F1F981@me.com>
 <20191231134925.GL70184@meh.true.cz>
 <C9B93DB4-A2CA-455B-8B4F-E7A23E34D141@me.com>
 <20200101124453.GM70184@meh.true.cz>
 <2DF80201-77E5-4301-9046-67165E5A8B9C@me.com>
 <20200101161447.GQ70184@meh.true.cz>
 <DC52BD3D-AB2B-426F-A184-C1F7664BB076@me.com>
 <20200101200825.GR70184@meh.true.cz>
 <C6E8AA31-AE61-40F5-881B-A69A2007272B@me.com>
 <20200101204630.GS70184@meh.true.cz>
From: Hannu Nyman <hannu.nyman@iki.fi>
Message-ID: <5e23fc80-72c7-5fe8-cf61-1b1390844a64@iki.fi>
Date: Thu, 2 Jan 2020 17:48:08 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101
 Thunderbird/72.0
MIME-Version: 1.0
In-Reply-To: <20200101204630.GS70184@meh.true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_074819_791179_6BA85928 
X-CRM114-Status: GOOD (  18.54  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [83.102.41.24 listed in list.dnswl.org]
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Sysupgrade possibly broken in recent
 development snapshots: "message": "Firmware image couldn't be validated"
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
Cc: =?UTF-8?Q?Petr_Nov=c3=a1k?= <petrn@me.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

UGV0ciDFoHRldGlhciBraXJqb2l0dGkgMS4xLjIwMjAga2xvIDIyLjQ2Ogo+IFBldHIgTm92w6Fr
IDxwZXRybkBtZS5jb20+IFsyMDIwLTAxLTAxIDIxOjExOjMwXToKPgo+PiBCdXQgaG93IGNvbWUg
dGhlIHdvcmthcm91bmQgd2FzIHRvIHVzZSBhbiBvbGRlciBsaWJ1Ym94IGFuZCB1YnVzIC0gd2Fz
IHRoZXJlCj4+IGFueSBuZXcgY2hlY2sgd2hpY2ggd2FzIG5vdCB0aGVyZSBiZWZvcmU/Cj4gSSBk
b24ndCBoYXZlIGRlZmluaXRpdmUgYW5zd2VyLCBhcyBJIHdvdWxkIG5lZWQgUlBpLTQgKG9yIGFu
eSBvdGhlciByZWFsCj4gaGFyZHdhcmUgd2l0aCBDb3J0ZXgtQTcyIGNvcmUpIHRvIGZpbmQgdGhl
IGFjdHVhbCBiaXQgaW4gdGhlIGxpYnVib3ggd2hpY2gKPiBjYXVzZWQgdGhpcyBjaGFuZ2UgaW4g
dGhlIGJlaGF2aW9yLCBidXQgaGVyZSBpcyBhIHBhcnQgb2YgdGhlIGNvbW1pdAo+IGRlc2NyaXB0
aW9uWzFdIHdoaWNoIG1pZ2h0IGhlbHAgYW5zd2VyaW5nIHRoYXQ6Cj4KPiAgIEl0IHNlZW1zIGxp
a2UgdGhlIHJlY2VudCBmaXhlcyBpbiB0aGUgbGlidWJveCBsaWJyYXJ5LCBwYXJ0aWN1bGFyeSBp
bgo+ICAgdGhlIGpzaG4gc3ViLWNvbXBvbmVudCAod2hpY2ggZW1wb3dlcnMganNvbl9kdW1wIHVz
ZWQgaW4gdGhlIHNoZWxsCj4gICBzY3JpcHQgZXhlY3V0ZWQgYnkgdGhlIGNoaWxkIHByb2Nlc3Mp
IG1hZGUgdGhlIGV4ZWN1dGlvbiBzb21laG93IGZhc3RlciwKPiAgIHRodXMgZXhwb3NpbmcgdGhp
cyByYWN5IGJlaGF2aW91ciBpbiB0aGUgdmFsaWRhdGVfZmlybXdhcmVfaW1hZ2VfY2FsbCBhdAo+
ICAgbGVhc3Qgb24gUlBpLTQgKENvcnRleC1BNzIpIHRhcmdldC4KPgo+IEFzIEkgd2FzIHVuYWJs
ZSB0byB0cmlnZ2VyIHRoaXMgaXNzdWUgZXZlbiBpbiB0aGUgUUVNVS9Db3J0ZXgtQTcyIEkgYXNz
dW1lLAo+IHRoYXQgaXQgd2FzIHNpbXBseSBzb21lIGtpbmQgb2YgcmFjZSwgbmVlZGVkIHNwZWNp
ZmljIHRpbWluZywgcHJvdmlkZWQKPiBwcmVjaW91c2x5IG9ubHkgYnkgdGhhdCBSUGktNCBoYXJk
d2FyZS4KCgpJIHRoaW5rIHRoYXQgdGhlcmUgbWF5IGhhdmUgYmVlbiBhbiBvbGRlciByYWNlIGNv
bmRpdGlvbiBiZWhhdmlvdXIgdGhhdCBoYXMgCm5vdyBqdXN0IHN1cmZhY2VkIGJldHRlciB3aXRo
IFJQaTQgYWZ0ZXIgdGhlIHJlY2VudCBjaGFuZ2VzLiBJdCBoYXMgZWFybGllciAKbWFuaWZlc3Rl
ZCBpdHNlbGYgc29tZXRpbWVzIHdpdGggc29tZSByb3V0ZXJzLCBidXQgbW9yZSByYXJlbHkuCgpJ
IGhhdmUgc2VlbiBhbiBvY2Nhc2lvbmFsIGZhaWx1cmUgb2Ygc3lzdXBncmFkZSBpbiBvbmUgb2Yg
bXkgcm91dGVycyBzaW5jZSAKT2N0b2JlciAoYXI3MXh4IG9yIGF0aDc5wqAgLyBXTkRSMzcwMHYy
KS4gSSB3cm90ZSBhYm91dCB0aGF0IHRvIHRoZSBtYWlsaW5nIApsaXN0IGluIE5vdmVtYmVyLCBh
bHRob3VnaCB0aGVuIEkgdGhvdWdodCB0aGF0IGl0IG1pZ2h0IGJlIGp1c3QgYSAiZm9yY2UiIApv
cHRpb24gZmFpbHVyZToKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvcGlwZXJtYWlsL29wZW53
cnQtZGV2ZWwvMjAxOS1Ob3ZlbWJlci8wMTk5OTYuaHRtbAoKT3RoZXJzIGhhdmUgc2VlbiB0aGF0
IGFsc28sIGJhc2VkIG9uIGZvcnVtIGRpc2N1c3Npb246Cmh0dHBzOi8vZm9ydW0ub3BlbndydC5v
cmcvdC9idWlsZC1mb3Itd25kcjM3MDB2MS12Mi13bmRyMzgwMC82NC8yOTUKClBldHIgTm92YWsg
ZGVzY3JpYmVzIHNpbWlsYXIgdGhpbmcgYXMgbXkgZXJyb3IgYXM6ICJpdCBkb2VzIGp1c3QgcmVi
b290IGJ1dCAKZG9lcyBub3QgZmxhc2ggYW55dGhpbmcuIgoKSSBoYXZlIHRyaWVkIHRvIGRlYnVn
IHRoYXQgaW4gbXkgV05EUjM4MDAgdGhhdCBoYXMgc2VyaWFsIGNvbnNvbGUgY29ubmVjdGlvbiwg
CmJ1dCBoYXZlIG5vdCBtYW5hZ2VkIHRvIHByb2R1Y2UgdGhlIGVycm9yIGluIHRoYXQgMzgwMC4g
V2l0aCAzODAwIHRoZSAKc3lzdXBncmFkZSBoYXMgc3VjY2VlZGVkIGFsd2F5cy4gSG93ZXZlciwg
aW4gbXkgMzcwMHYyICh0aGF0IGhhcyBpZGVudGljYWwgCmhhcmR3YXJlIGV4Y2VwdCB0aGUgUkFN
IHNpemUpIG9uIHRoZSBvdGhlciBzaWRlIG9mIHRoZSBidWlsZGluZywgSSBzdGlsbCAKb2NjYXNp
b25hbGx5IHNlZSB0aGUgYmVoYXZpb3VyIG9mIEx1Q0kgYmFzZWQgc3lzdXBncmFkZSBzdGFydGlu
ZyBvaywgYnV0IHRoZSAKcm91dGVyIGJvb3RpbmcgYmFjayB0byB0aGUgc2FtZSBmaXJtd2FyZSBh
ZnRlciBhbiBpbnZpc2libGUgZXJyb3IuIEFmdGVyIHRoYXQgCnJlYm9vdCB0aGUgbmV4dCBzeXN1
cGdyYWRlIGF0dGVtcHQgdmlhIEx1Q0kgdXN1YWxseSB3b3JrcyBxdWl0ZSBvay4gKHNvdW5kcyAK
bGlrZSBhIHN5c3VwZ3JhZGUgZnJvbSBhIHJlY2VudGx5IGJvb3RlZCBzeXN0ZW0gdXN1YWxseSB3
b3JrcywgYnV0IApzeXN1cGdyYWRpbmcgYSBzeXN0ZW0gYWZ0ZXIgc29tZSBydW50aW1lIGRvZXMg
c29tZXRpbWVzIG5vdCB3b3JrLikKCkkgZmlyc3QgdGhvdWdodCB0aGF0IGl0IHdhcyByZWxhdGVk
IHRvIHVzaW5nIGZvcmNlIGluIHRoZSBhcjcxeHgvYXRoNzkganVtcCwgCmJ1dCBpdCBoYXMgYmVl
biBwcmVzZW50IGluIG5vcm1hbCBzeXN1cGdyYWRlcy4KClBvc3NpYmx5IGEgbWFuaWZlc3RhdGlv
biBvZiB0aGUgc2FtZSByYWNlIGNvbmRpdGlvbiBpbiAKc3lzdXBncmFkZS9wcm9jZC9saWJ1Ym94
LCBzbyBob3BlZnVsbHkgeW91ciBwYXRjaGVzIHdpbGwgZml4IGFsc28gdGhhdC4KCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBt
YWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3Rz
Lm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
