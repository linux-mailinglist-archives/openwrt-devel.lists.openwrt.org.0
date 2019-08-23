Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 097EE9ACE1
	for <lists+openwrt-devel@lfdr.de>; Fri, 23 Aug 2019 12:15:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YRMNAv8bBXMovMG7PLUx9EtCpxUPfORVV5DUsQxmPHA=; b=jXwXN3DAw36C5X
	jqj902AMmDBbcv1vgDEjlJvSGii83Z0BLUlibd2kyNFzbjyc58c08HDgEDBNc8IzLf1OguezPkbOn
	TCcgUwczQoAaXQ9X2YLkF2zXEzsM05xao6vj4slRvpTuGUFrm4zo/vW3UvUrtGKVNgMDV1BCE/1cI
	tvq7fWAeYU0p+a8w7G/Ohz2I7GE5G0r0tf/0kzMHUdvIltG7H62PAMGgXkX/NwitJFz/x/kjXSa4b
	KVKc+naraowgIO56Pceq8nqnNoFt7kh9BRZ8wq5Vy4ZDaprBeGgr0OQ7zvryJuPFhxJNNN1R5lkMt
	nlM5jk6uhZPmX1Mdrv9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i16b3-0002zT-Ut; Fri, 23 Aug 2019 10:15:05 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i16au-0002zK-Kg
 for openwrt-devel@bombadil.infradead.org; Fri, 23 Aug 2019 10:14:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Date:Message-ID:Subject:From:To:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IbB/eWzwyuSVzp7XvfN/RgF+9XdtbLqVJC8ky38GiA0=; b=GIg6i0LLhDFRyD0bPR0R8586Cg
 yEWQ2uJFholp/S+hvrfS1Y5TivvQOuQ1TSPyTFN1DPE8BP8kbeQd+zsvL4LeRf2avhOS+tG8yvAFT
 7ivO/bliAalFibvwK/2b2TMaiqMHuK+KyhBtA6tmVtuKN7DXr9E9RGqhq+RsxD5rxRrxGF/JV2s8n
 KjF5Te9xVRNu3s3AKsNQiGHNlcOxy7Ww3OcV5umLCsMffezcyOzG2XnubMdTSqVsxTKXTkt7lkUCe
 mXi+G1mcxVUDnlgk7P3ycF+OLPiO2KYz+wn5HwV5FCWUUcAPRduO0bud+TCnG5WX2JF+44bsw9gyO
 tk1LVLpQ==;
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i16bB-0007vo-7n
 for openwrt-devel@lists.openwrt.org; Fri, 23 Aug 2019 10:15:15 +0000
X-Originating-IP: 98.151.65.6
Received: from [192.168.0.191] (cpe-98-151-65-6.hawaii.res.rr.com
 [98.151.65.6]) (Authenticated sender: mail@aparcar.org)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id BDA3F1C0004
 for <openwrt-devel@lists.openwrt.org>; Fri, 23 Aug 2019 10:14:21 +0000 (UTC)
To: openwrt-devel@lists.openwrt.org
From: Paul Spooren <mail@aparcar.org>
Message-ID: <d5665883-349a-1a08-7716-0676fcb60d33@aparcar.org>
Date: Fri, 23 Aug 2019 00:14:18 -1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_111513_297507_570C0C8C 
X-CRM114-Status: UNSURE (   5.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [RFC]remove outdated targets from snapshots
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

SGksCgp2YXJpb3VzIHRhcmdldHMgYXQgT3BlbldydC9zbmFwc2hvdHNbMF0gYXJlIG5vIGxvbmdl
ciBidWlsZCBhbmQgY2F1c2UgCihhdCBsZWFzdCBmb3IgbWUpIGZyb20gdGltZSB0byB0aW1lIHNv
bWUgdHJvdWJsZS4gV291bGQgaXQgYmUgcG9zc2libGUgCnRvIGFkZCBhIGNyb24gam9iIHJlbW92
aW5nIGFsbCBmaWxlcyBmcm9tIHNuYXBzaG90cy8gd2hpY2ggYXJlIG9sZGVyIAp0aGFuLCBhIHdl
ZWs/IFRoZSBmb2xkZXIgaXMgbm90IGludGVudGVkIGFzIGFuIGFyY2hpdmUsIHJpZ2h0PwoKU3Vu
c2hpbmUsCiDCoMKgwqAgUGF1bAoKWzBdOiBodHRwczovL2Rvd25sb2Fkcy5vcGVud3J0Lm9yZy9z
bmFwc2hvdHMvdGFyZ2V0cy8KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3Rz
Lm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9v
cGVud3J0LWRldmVsCg==
