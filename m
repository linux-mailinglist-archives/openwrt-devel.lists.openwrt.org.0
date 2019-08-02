Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 647507FCEE
	for <lists+openwrt-devel@lfdr.de>; Fri,  2 Aug 2019 17:01:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eK8xU+iiA3Q8mZ82GpLJShHoscFFItDoyzgKEzOJTXY=; b=miOd/0jjmCv1Avjq72aS1UAwL
	7tI7D6r4Z5PQcszceXI73OQjZaoB3EuQ3TcP3UZVJLcWgroMdw36oe+4hMTAhIG4AAbGzNtAD/Fbf
	/uaqHmnOg+2r7ao5curExJ5j3xW2I1QStbAsr3sSP5+yI4f5e1rli3BphtDcTqvO96j+EcF5oYJWk
	v5ZkjjEY1MqT2iMlRWcNu7CH2nsWLZxV3s0OHzuQ/WwTySWakmuwSRslUuPjoWVqfg8J+zoS31E9E
	a3IKOLZRNkkV1K1UHkcD1tQUA8vE7okMUC2kdRdSdohJXkHtJ3tghnM8qsoexPSWmF3L3gAOIfA5R
	WCOkblyOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htZ3e-0000eQ-FE; Fri, 02 Aug 2019 15:01:26 +0000
Received: from welho-filter2.welho.com ([83.102.41.24])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htZ2s-0000cb-UW
 for openwrt-devel@lists.openwrt.org; Fri, 02 Aug 2019 15:00:41 +0000
Received: from localhost (localhost [127.0.0.1])
 by welho-filter2.welho.com (Postfix) with ESMTP id 0F612C3F3E;
 Fri,  2 Aug 2019 18:00:33 +0300 (EEST)
X-Virus-Scanned: Debian amavisd-new at pp.htv.fi
Received: from welho-smtp1.welho.com ([IPv6:::ffff:83.102.41.84])
 by localhost (welho-filter2.welho.com [::ffff:83.102.41.24]) (amavisd-new,
 port 10024)
 with ESMTP id NXKisV1xArV6; Fri,  2 Aug 2019 18:00:32 +0300 (EEST)
Received: from [192.168.1.238] (87-100-151-181.bb.dnainternet.fi
 [87.100.151.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by welho-smtp1.welho.com (Postfix) with ESMTPS id 0EADA7A;
 Fri,  2 Aug 2019 18:00:28 +0300 (EEST)
To: openwrt-devel@lists.openwrt.org
References: <20190723133717.20010-1-ynezz@true.cz>
 <8646063f-e4eb-f32f-381e-6fa2a847d0f8@hauke-m.de>
From: Hannu Nyman <hannu.nyman@iki.fi>
Message-ID: <4d6009e6-090b-c513-aaa1-919dcd21a162@iki.fi>
Date: Fri, 2 Aug 2019 18:00:30 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101
 Thunderbird/69.0
MIME-Version: 1.0
In-Reply-To: <8646063f-e4eb-f32f-381e-6fa2a847d0f8@hauke-m.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_080039_154041_8689EDBE 
X-CRM114-Status: GOOD (  15.60  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [83.102.41.24 listed in list.dnswl.org]
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] base-files: make USE_PROCD=1 default
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>,
 =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGF1a2UgTWVocnRlbnMga2lyam9pdHRpIDIuOC4yMDE5IGtsbyAxNy40MjoKPiBPbiA3LzIzLzE5
IDM6MzcgUE0sIFBldHIgxaB0ZXRpYXIgd3JvdGU6Cj4+IFRyYW5zaXRpb24gcGVyaW9kIGZvciBp
bml0IHNjcmlwdCBtaWdyYXRpb24gd2FzIGxvbmcgZW5vdWdoLCBsZXQncwo+PiBtYWtlIFVTRV9Q
Uk9DRD0xIGRlZmF1bHQgbm93IHNvIHRoZXJlJ3MgZW5vdWdoIHRpbWUgdG8gY29udmVydCB0aGUK
Pj4gcmVtYWluaW5nIHNlcnZpY2VzL2luaXQgc2NyaXB0cyBmb3IgdGhlIG5leHQgcmVsZWFzZS4K
Pj4KPj4gU2lnbmVkLW9mZi1ieTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KPj4gLS0t
Cj4+ICAgcGFja2FnZS9iYXNlLWZpbGVzL2ZpbGVzL2V0Yy9yYy5jb21tb24gfCAxMTMgKysrKysr
KysrKy0tLS0tLS0tLS0tLS0tLQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCA0NyBpbnNlcnRpb25zKCsp
LCA2NiBkZWxldGlvbnMoLSkKPj4KPiBEbyB5b3Uga25vdyBob3cgbWFueSBwYWNrYWdlcyBpbiB0
aGUgcGFja2FnZSBmZWVkIGFuZCB0aGUgbWFpbgo+IHJlcG9zaXRvcnkgYXJlIHN0aWxsIG5vdCB1
c2luZyBwcm9jZD8KPgo+IEV4dGVybmFsIHJlcG9zaXRvcmllcywgbm90IHRoZSBwYWNrYWdlIGZl
ZWQsIHdpbGwgcHJvYmFibHkgYmUgYWZmZWN0ZWQKPiBtb3N0LCBidXQgSSB0aGluayB3ZSBkbyBu
b3QgaGF2ZSB0byBjYXJlIGFuZCB0aGVyZSB3ZXJlIG1hbnkgeWVhcnMgdG8KPiBjb252ZXJ0Lgo+
Cj4gQWNrZWQtYnk6IEhhdWtlIE1laHJ0ZW5zIDxoYXVrZUBoYXVrZS1tLmRlPgo+Cj4gSGF1a2UK
PgoKSSBkbyBub3QgcmVtZW1iZXIgc2VlaW5nIGV2ZXIgYSBnZW5lcmFsIGNhbGwgZm9yIGNvbnZl
cnRpbmcgdGhlIG9sZCBwYWNrYWdlcyAKdG8gdXNpbmcgcHJvY2QuIEluIHRoYXQgc2Vuc2UgdGhp
cyBwcm9wb3NlZCBjaGFuZ2UgdG8gc3dpdGNoIHRoZSBkZWZhdWx0IApjb21lcyBhIGJpdCBzdXJw
aXNlLgoKUXVpY2sgc2VhcmNoIGluIHRoZSBwYWNrYWdlcyBmZWVkIHJlcG8gcmV2ZWFscyB0aGF0
IHRoZXJlIGFyZSAyODEgaW5zdGFuY2VzIApvZiAiL2V0Yy9yYy5jb21tb24iIGFuZCBvbmx5IDIw
NSBpbnN0YW5jZXMgb2YgVVNFX1BST0NELiBTbywgbGlrZWx5IGFib3V0IDc1IApwYWNrYWdlcyBp
biB0aGUgcGFja2FnZXMgZmVlZCByZXBvIG9ubHkgYXJlIHVzaW5nIHRoZSBvbGQgc3ludGF4IHdp
dGhvdXQgcHJvY2QuCgpIYXMgYSBkZWNpc2lvbiBiZWVuIG1hZGUgdG8gZGVjbGFyZSB0aGUgb2xk
LXN0eWxlIGluaXQgZmlsZSBpbnZhbGlkPyBXaWxsIGl0IApiZSBwb3NzaWJsZSB0byBzdGlsbCB1
c2UgdGhlIHN5bnRheD8gV2hhdCBpcyB0aGUgbmV3ICJvdmVycmlkZSIgdG8gaW5kaWNhdGUgCnRo
ZSB1c2FnZSBvZiB0aGUgb2xkIHN5bnRheD8KCk9yIHdpbGwgdGhlIHByb3Bvc2VkIGNoYW5nZSBk
aXNhYmxlIHRoZSBwYWNrYWdlcyB1c2luZyB0aGUgb2xkIGluaXQgZmlsZSAKc3ludGF4IHRvdGFs
bHk/CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9w
ZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcK
aHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
