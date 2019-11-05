Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 710B5F0A79
	for <lists+openwrt-devel@lfdr.de>; Wed,  6 Nov 2019 00:53:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wvkeDNuE+uMm51BTRvW7Rt074ZHKbDCiTnYkqDoZ4i8=; b=aS7fyME4yAMorQ8FfSdL/8Pd+
	JuJqOq8UlR2e6mA4CYcENZs/5qYMSsgsXK0aZeNnJ7evvMWjaKG1JjfazDlGho2TOFMOouPLEPvid
	rPPvmnNWPn6fADf15nzct4pyXEAjzRNpu0ATSTtl95QJ4A4ycVJ6eHrCJV521qSGwV4U8sul5ROnq
	mkIHDBHyyYgEdn3eBhNJkTwhIpP4LHTXWFJHrHLyMBrEEmNnX8VhgcAhLdjKeXHWGYrqWPTOlAIj2
	iLVjxJEdbH2EMRvgvyCriDWCRMmpA1UBhgAOelrSaN3fDoLkrqDPcvznR8eRlKLAjvCTFQ5OJdYgy
	KOQqr4ZhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS8d6-0005gi-0Q; Tue, 05 Nov 2019 23:52:56 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS8cx-0005gD-4i
 for openwrt-devel@lists.openwrt.org; Tue, 05 Nov 2019 23:52:48 +0000
Received: from JKLETSKY-MBP15.guidewire.com (unknown [199.91.43.11])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id AF9C93D74C;
 Tue,  5 Nov 2019 15:52:15 -0800 (PST)
To: =?UTF-8?Q?Bj=c3=b8rn_Mork?= <bjorn@mork.no>,
 Adrian Schmutzler <mail@adrianschmutzler.de>, openwrt-devel@lists.openwrt.org
References: <20191105151202.4709-1-freifunk@adrianschmutzler.de>
 <87r22m1dp3.fsf@miraculix.mork.no>
 <002e01d593f8$469ca0a0$d3d5e1e0$@adrianschmutzler.de>
 <87lfsu172n.fsf@miraculix.mork.no>
From: Jeff Kletsky <lede@allycomm.com>
Message-ID: <a0b25bd3-7e4f-9d77-4594-9e1c67afb88b@allycomm.com>
Date: Tue, 5 Nov 2019 15:52:15 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <87lfsu172n.fsf@miraculix.mork.no>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_155247_185916_12F1E230 
X-CRM114-Status: GOOD (  14.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v2] ath79: use gpio_hog instead of
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
Cc: 'Birger Koblitz' <mail@birger-koblitz.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gMTEvNS8xOSAxMTowMSBBTSwgQmrDuHJuIE1vcmsgd3JvdGU6Cgo+ICJBZHJpYW4gU2NobXV0
emxlciIgPG1haWxAYWRyaWFuc2NobXV0emxlci5kZT4gd3JpdGVzOgo+Cj4+IEJ1dCwgYmFzZWQg
b24gdGhlIGRpc2N1c3Npb24gaGVyZSwgdGhlIG9wcG9zaXRlIGhhcyBiZWVuIGlkZW50aWZpZWQg
YXMKPj4gc3VwZXJpb3Igc29sdXRpb24gKGRpc2N1c3NpbmcgbmFuZCBzdWJ0YXJnZXQpOgo+PiBo
dHRwczovL2dpdGh1Yi5jb20vb3BlbndydC9vcGVud3J0L3B1bGwvMjE4NCNkaXNjdXNzaW9uX3Iz
NDIxMzY2MzUKPiBUaGF0J3MgbWlzc2luZyB0aGUgcG9pbnQuIFJlZ3VsYXRvcnMgYXJlIHN1cGVy
aW9yIGlmIHRoZXJlIGlzCj4gY29udHJvbGxpbmcgZHJpdmVyLiBFLmcuCj4gaHR0cHM6Ly93d3cu
a2VybmVsLm9yZy9kb2MvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi91c2It
bm9wLXhjZWl2LnR4dAo+Cj4gU2VlIGFyY2gvYXJtL2Jvb3QvZHRzL2FybWFkYS0zODUtbGlua3N5
cy5kdHNpIGZvciBhIG5pY2UsIE9wZW5XcnQKPiByZWxldmFudCwgZXhhbXBsZSB1c2luZyB0aGlz
IHdpdGggYSBmaXhlZCByZWd1bGF0b3IuCj4KPiBJZiB5b3UgZG9uJ3QgbGluayBhbnl0aGluZyB0
byB0aGUgcmVndWxhdG9yLCB0aGVuIEkgYWdyZWUgdGhhdCB5b3UgbWlnaHQKPiBhcyB3ZWxsIHVz
ZSBncGlvLWhvZy4gIEJ1dCBJIHN0aWxsIGRvbid0IHNlZSBob3cgeW91IGNhbiBjYWxsIHRoYXQg
YQo+IHN1cGVyaW9yIHNvbHV0aW9uLiAgSXQgZG9lc24ndCBzdWNrIG1vcmUgb3IgbGVzcy4gIEkg
dGhvdWdodCB0aGUgYXRoNzkKPiBjb252ZXJzaW9uIHdhcyBhbGwgYWJvdXQgdXNpbmcgZGV2aWNl
dHJlZSB0byBkb2N1bWVudCB0aGUgYm9hcmRzIDstKQo+CgpJIGFncmVlIHRoYXQgaWYgdGhlIGRy
aXZlciBjYW4gY29udHJvbCB0aGUgcmVndWxhdG9yIGFuZCBkbyBzb21ldGhpbmcKdXNlZnVsIHdp
dGggaXQgKHN1Y2ggYXMgZHJvcHBpbmcgaXQgdG8gaGFyZC1yZXNldCB0aGUgVVNCIGRldmljZXMp
LAp0aGVyZSBhcmUgYWR2YW50YWdlcy4KCkhvd2V2ZXIsIG15IHJlY2VudCB3b3JrIG9uIHRoZSBh
dGg3OS1uYW5kIGtlcm5lbCBzaG93cyB0aGF0IGFkZGluZwoKIMKgIENPTkZJR19SRUdVTEFUT1I9
eQogwqAgQ09ORklHX1JFR1VMQVRPUl9GSVhFRF9WT0xUQUdFPXkKCnJlc3VsdHMgaW4gYW4gaW5j
cmVhc2UgaW4ga2VybmVsIHNpemUgb2YgfjE0IGtCOgoKIMKgIDEsOTUyLDAyMCB3aXRoIHJlZ3Vs
YXRvci1maXhlZAogwqAgMSw5MzcsMTY0IHdpdGggZ3Bpby1ob2cKCkF0IGxlYXN0IGZvciB0aGUg
YXRoNzktbmFuZCB0YXJnZXQsIHRoaW5ncyBhcmUgZ2V0dGluZyB0aWdodCBmb3IgYQoyIE1CIGtl
cm5lbCBsaW1pdCwgd2l0aCBvbmx5IGEgaGFuZGZ1bCBvZiBib2FyZHMgYW5kIHRoZWlyICJ1bmlx
dWUiCmhhcmR3YXJlIGFzcGVjdHMgYWNjb3VudGVkIGZvciB5ZXQuCgoKSmVmZgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFp
bGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5v
cGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
