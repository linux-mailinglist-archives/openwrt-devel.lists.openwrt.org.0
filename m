Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 343C551BFD
	for <lists+openwrt-devel@lfdr.de>; Mon, 24 Jun 2019 22:06:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IFMhDbaO0znr5rKHd2LygNtaojAkHswfMdjqnUdQtPU=; b=PqmMeOERIpxZgdwGqz/l9iAMT
	8+7FVu0gHKN3kxLKxpRZ+/cWdA0c72eOq2szLGav4++1ivvB3sVYAwtSwp749A1yyCXGSaSCs1j98
	RwydG9HThee3NPa3HjO6vy3cT4it+w1vkSfZnyF0G1ZR/uXKJTXknxNTrPbd6tbPp4e4js97LDqNV
	wg92GHyV0w9yGP4DMaYKSFU2e9BLc79wS6vm7g451t5R6iqsMzVhrNxitp6CFFrWxuCPG36PgGrP7
	CzN7gy4Rk1EgKTVvv6d7QUkGCg6fPcj5Sfr8noAXcTo1NGXzkkSV276yRq4ptfA7tynUqYZG7QB95
	GXuxsCeAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfVEo-00060Q-OB; Mon, 24 Jun 2019 20:06:50 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfVEM-0005si-Nk
 for openwrt-devel@lists.openwrt.org; Mon, 24 Jun 2019 20:06:33 +0000
Received: from [192.168.100.195] (50-251-239-81-static.hfc.comcastbusiness.net
 [50.251.239.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 1BFE1137560;
 Mon, 24 Jun 2019 13:06:22 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 1BFE1137560
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1561406782;
 bh=38VIrcp5C6a1F1sFBdkzQBPTdb6Q2UJxq4RprUq8KTQ=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=SxP6o40qiYs3txHnGCoO4umMm0XkEYEpQ/r5nLxk4lSjLuUyvRUuhHuhj2y41VxDs
 Qh7tTzHinUZZGu6MaWPCmTS/RNKe1C6sDv/hGwEjR6c1P8J0uwTkeNTf2J0u5CiP8V
 SqPNAu7djOnU+Pi3TJw//QcofrSPKm0d74/GypZY=
To: Kevin 'ldir' Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
References: <2886BC46-F77D-4F20-83F4-4E7CECCB9716@darbyshire-bryant.me.uk>
 <0eda2a43-8497-b061-1a99-16eae30dbf8c@candelatech.com>
 <CF5B2DFF-E526-4E3A-BB63-2B3F305EBE72@darbyshire-bryant.me.uk>
From: Ben Greear <greearb@candelatech.com>
Organization: Candela Technologies
Message-ID: <c15d6141-323c-440f-f51e-d3dfba217351@candelatech.com>
Date: Mon, 24 Jun 2019 13:06:21 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <CF5B2DFF-E526-4E3A-BB63-2B3F305EBE72@darbyshire-bryant.me.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_130622_836763_511DC749 
X-CRM114-Status: GOOD (  14.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] ath10k-ct crash Archer C7 v2 - OpenWrt
 r10307-629e6538a1 - k4.19
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gNi8yNC8xOSAxMjozNCBQTSwgS2V2aW4gJ2xkaXInIERhcmJ5c2hpcmUtQnJ5YW50IHdyb3Rl
Ogo+IAo+IAo+PiBPbiAyNCBKdW4gMjAxOSwgYXQgMTk6NTEsIEJlbiBHcmVlYXIgPGdyZWVhcmJA
Y2FuZGVsYXRlY2guY29tPiB3cm90ZToKPj4KPj4gT24gNi8yMy8xOSAzOjMzIEFNLCBLZXZpbiAn
bGRpcicgRGFyYnlzaGlyZS1CcnlhbnQgd3JvdGU6Cj4+PiBVbmZvcnR1bmF0ZWx5IGZseXNwcmF5
IHdvbuKAmXQgbGV0IG1lIGNyZWF0ZSBhIHRhc2ssIHNvIGZpbGluZyB0aGlzIGhlcmUgc28gaXQg
ZG9lc27igJl0IGdldCBsb3N0Lgo+Pj4gQXJjaGVyIEM3IHYyIC0gT3BlbldydCByMTAzMDctNjI5
ZTY1MzhhMSAtIGs0LjE5Cj4+PiBSZWNlbnRseSBzZWVuIHRoZSBmb2xsb3dpbmcgZmlybXdhcmUg
Y3Jhc2hlcyBvbiB0aGUgZGV2aWNlLiAgU2VlbXMgdG8gYmUgcmVsYXRlZCB0byBteSBtYWNib29r
IGNvbWluZyBvdXQgb2YgcG93ZXIgc2F2ZSBtb2RlLgo+Pj4gVGhlcmUncyBiZWVuIGEgcmVjZW50
IGF0aDEway1jdCBmaXJtd2FyZSBidW1wIHNvIHVuY2xlYXIgaWYgdGhpcyBpcyBhIHdpcmVsZXNz
IGZpcm13YXJlIGJ1ZyBvciBhIGtlcm5lbCBkcml2ZXIgYnVnLCBvciBib3RoLiAgTWF5YmUgdGhl
IGNyYXNobG9nIGhvbGRzIGEgY2x1ZS4KPj4KPj4gSGVsbG8sCj4+Cj4+IERvZXMgdGhpcyBzZWVt
IHRvIGJlIGEgcmVncmVzc2lvbiwgb3IgaXQgbmV2ZXIgd29ya2VkIHdlbGwsIG9yIHlvdSBqdXN0
IHN0YXJ0ZWQgdGVzdGluZwo+PiB0aGlzIHR5cGUgb2Ygc2NlbmFyaW8/Cj4+Cj4+IFRoYW5rcywK
Pj4gQmVuCj4gCj4gSXTigJlzIGEgcmVncmVzc2lvbiBmb3IgbWUgYXQgbGVhc3QuICBOb3Qgc2Vl
biBpdCBiZWZvcmUuCgpEb2VzIGl0IHNlZW0gdG8gaGFwcGVuIG9mdGVuIGVub3VnaCB0byBiZSBz
b21ldGhpbmcgeW91IGNvdWxkIGJpc2VjdD8KCkFsc28sIHBsZWFzZSB0cnkgdGhlIGZpcm13YXJl
IEkgYXR0YWNoZWQgdG8gdGhlIHByZXZpb3VzIGVtYWlsIHRvIEtvZW4uICBJdCBoYXMgZGVidWdn
aW5nCmZvciB0aGUgY3Jhc2ggeW91IHNhdy4gIEkgaGF2ZSBjb21tZW50cyBpbiB0aGUgbmVhcmJ5
IGNvZGUgZnJvbSBvbGQgc3RyYW5nZSBpc3N1ZXMgc2VlbiB0aGVyZSwKc28gbm90IHN1cmUgaXQg
aXMgc29tZXRoaW5nIG5ldyBvciBqdXN0IG1heWJlIHRyaWdnZXJpbmcgc29tZSBvbGQgYnVnLgoK
VGhhbmtzLApCZW4KCj4gCj4gQ2hlZXJzLAo+IAo+IEtldmluCj4gCgoKLS0gCkJlbiBHcmVlYXIg
PGdyZWVhcmJAY2FuZGVsYXRlY2guY29tPgpDYW5kZWxhIFRlY2hub2xvZ2llcyBJbmMgIGh0dHA6
Ly93d3cuY2FuZGVsYXRlY2guY29tCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBs
aXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGlu
Zm8vb3BlbndydC1kZXZlbAo=
