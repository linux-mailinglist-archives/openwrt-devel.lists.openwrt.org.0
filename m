Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF8C1144472
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 Jan 2020 19:41:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1kumxU2Huc2ZCT9HfMmU3lBVNzohiLYrO4JHWMC2v3k=; b=I+WTLEYW3TRvGb
	/JyElytFDhEIaRwdzT6dCqEXgPiqIrA2wd2/mUYNu2llUYNvlvddYxdqf+OEmDoTlZLNfaaTVGTFY
	kpUMPyT0PFTt5n6qYePljI/mXR8HCW2RcPSO+nRZ0YgdxLes2vZw1hYYG5GIMDlt0p7wWdid3ase5
	GpG92yzus07ehTuRg3dpQy1Vcn4DxcbEyTF5OZRxshbLev0iPzkCvGoAA4gAjxuyP7iG3eZSAez+S
	vjTvPHiZhXaBZX+Gjd1D6+yi874IttKmXUqsELf51sZiCA77obWHRRd8O86yVj4RbP0nY4n+U8hqs
	XvvSez+DkR5WgmBlHpHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ityST-0002mx-6J; Tue, 21 Jan 2020 18:41:01 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itySH-0002lu-75; Tue, 21 Jan 2020 18:40:54 +0000
Received: from miraculix.mork.no (miraculix.mork.no
 [IPv6:2001:4641:0:2:7627:374e:db74:e353]) (authenticated bits=0)
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPSA id 00LIegq5011868
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
 Tue, 21 Jan 2020 19:40:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1579632043; bh=K60l1DkROooZWycf9SoOOyhJ18hhLapsb/soF4Q2Eyo=;
 h=From:To:Cc:Subject:References:Date:Message-ID:From;
 b=Fi1P2JEiyEgQF+e9CIEMvPJr+VfzmfzZcCRqmtqryN6+awzGqxZ1nx1VOvaCKnadB
 Z74URhJdVZturjv+A8LUN4jQ1D2aQoUD2KwQaLfrL2v2LVeqLHpY4BnmLdA0A7XaDx
 YJIIN+/QH6+QS9WwZ8KzwLt/caLkIr1d1jL/2snM=
Received: from bjorn by miraculix.mork.no with local (Exim 4.92)
 (envelope-from <bjorn@mork.no>)
 id 1itySA-0007WR-D8; Tue, 21 Jan 2020 19:40:42 +0100
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
To: Daniel Golle <daniel@makrotopia.org>
Organization: m
References: <20200121181933.GA34748@makrotopia.org>
Date: Tue, 21 Jan 2020 19:40:42 +0100
In-Reply-To: <20200121181933.GA34748@makrotopia.org> (Daniel Golle's message
 of "Tue, 21 Jan 2020 20:19:33 +0200")
Message-ID: <87blqwirf9.fsf@miraculix.mork.no>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.101.4 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_104049_782149_7DCEA9C4 
X-CRM114-Status: UNSURE (   6.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4641:0:0:0:0:0:1 listed in] [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] hostapd and Linux bridges
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
Cc: hostap@lists.infradead.org, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RGFuaWVsIEdvbGxlIDxkYW5pZWxAbWFrcm90b3BpYS5vcmc+IHdyaXRlczoKCj4gT24gcHJvcHJp
ZXRhcnkgQVBzIGl0IGxvb2tzIGxpa2UgcG9ydCBpc29sYXRpb24gaXMgZW5hYmxlZCBvciBkaXNh
YmxlZAo+IGdsb2JhbGx5IGluIExpbnV4JyBicmlkZ2UgY29kZSB1c2luZyBzeXNjdGwgb3Igb3Ro
ZXIgbWV0aG9kcywgYW4KPiBhcHByb2FjaCB3aGljaCBpcyB1bmxpa2VseSB0byBnZXQgYWNjZXB0
ZWQgaW50byB0aGUgS2VybmVsLCBhbHNvIGdpdmVuCj4gdGhhdCB0aGUgbmV0bGluayBpbnRlcmZh
Y2UgYWxyZWFkeSBleGlzdHMgYW5kIGFsbG93cyBkb2luZyB0aGUgc2FtZQo+IHRoaW5nIGluIGEg
bW9yZSBncmFudWxhciBmYXNoaW9uLgoKSHVoPwoKV29uJ3QgdGhpcyBzeXNmcyBhdHRyaWJ1dGUg
c2V0IHRoZSBzYW1lIGZsYWcgSUZMQV9CUlBPUlRfSVNPTEFURUQgc2V0cz8KCgpyb290QHdydDE5
MDBhYy0xOn4jIGdyZXAgLiAvc3lzL2NsYXNzL25ldC9ici1sYW4vYnJpZi8qL2lzb2xhdGVkIAov
c3lzL2NsYXNzL25ldC9ici1sYW4vYnJpZi9ldGgwLjcvaXNvbGF0ZWQ6MAovc3lzL2NsYXNzL25l
dC9ici1sYW4vYnJpZi93bGFuMC9pc29sYXRlZDowCi9zeXMvY2xhc3MvbmV0L2JyLWxhbi9icmlm
L3dsYW4xL2lzb2xhdGVkOjAKCgoKQmrDuHJuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRl
dmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9vcGVud3J0LWRldmVsCg==
