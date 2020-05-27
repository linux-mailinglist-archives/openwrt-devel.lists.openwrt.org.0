Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE4B51E50DF
	for <lists+openwrt-devel@lfdr.de>; Thu, 28 May 2020 00:05:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aDes3yl96yBnOl2HGCabuklCnJWW6Ae7ppCBLTa1L/U=; b=rUj8WCC3suFn1i
	aWyO0PNvxDlzo2mDBCb6QccWP7iVOKl93U5Iok0rzOfQXoFeHrMpFuzSLaLrlYG3mY+BiIiN3jN2B
	O0fbw3mfhTRCI4bEs4uPMXAP2EuCxU/x98OrOqRWTALB9euP1J4p2HxwU4NiNz+AWWvkl1C7vY0i6
	TjJqV91We+p7j5bpzdJXDVr1keYf9fDb9w5dREQIU1Be3johwLOxEiu2lsOQrx9pxrwN0n++6gGzH
	0EHkIsbsY1TghxsrTPHM4heyFelC0s+pcUGi7Eo+hliJvtOZGkeuXeR8c3IeOEdMAH13GsGHL43Gw
	d6D0RDK7n3/KxlXwHB7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je4AK-00069F-Pz; Wed, 27 May 2020 22:04:48 +0000
Received: from vps.slashdirt.org ([144.91.108.218])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je4AD-00067v-Fu
 for openwrt-devel@lists.openwrt.org; Wed, 27 May 2020 22:04:43 +0000
Received: from chuck.tardis.lan (tardis.herebedragons.eu [171.22.3.161])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPSA id 7070B6005B;
 Thu, 28 May 2020 00:03:51 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org 7070B6005B
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=slashdirt.org; s=mail;
 t=1590617033; bh=mBJA4t7ckSVNmnE3VXbOHc8MI111ntQdl8qTNrXifK0=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=ZUsAZV0scWv+KQlYXE9JO+O0N29Tun7OHbg4u9c0tfXyNkpDEgo74nN6cScCufz9v
 kXkinwnxTtdoP8T2Datb4MNgy6iPjCjdboueM0EWkPU6q0M+XcWhfWLBCFRx7onx9p
 Ss3RVYRyvuGDYaoDMtgp8OgIqf5DGXjh82LdGFxg=
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.14\))
From: Thibaut <hacks@slashdirt.org>
In-Reply-To: <C60FB157-2EBE-4884-9D33-30C7C4487732@slashdirt.org>
Date: Thu, 28 May 2020 00:03:51 +0200
Message-Id: <DE4669E5-8E7B-49F6-8A09-A3A7ED066BA8@slashdirt.org>
References: <20200517182851.33553-1-hacks@slashdirt.org>
 <20200517194609.34294-1-hacks@slashdirt.org>
 <CAOdf3gogkVvy==Na9tDTmf2fJFcggNyT2erBHHTNPa4yDu6Yfg@mail.gmail.com>
 <C60FB157-2EBE-4884-9D33-30C7C4487732@slashdirt.org>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-Mailer: Apple Mail (2.3445.104.14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_150441_849793_EEF738B7 
X-CRM114-Status: UNSURE (   6.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.4 NO_DNS_FOR_FROM        RBL: Envelope sender has no MX or A DNS records
 [listed in slashdirt.org.	IN	A]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH v2] package/base-files: caldata: work
 around dd's limitation
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
Cc: Robert Marko <robimarko@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

UGluZz8KV2hhdOKAmXMgdGhlIHN0YW5jZSBvbiB0aGlzIHBhdGNoPwoKU2hvdWxkIEkgcmViYXNl
IGJlZm9yZSByZXN1Ym1pdHRpbmcgZm9sbG93aW5nIHBhY2thZ2UgdmVyc2lvbiBidW1wIG9yIGlz
IHRoaXMgTkFDS2QgYXMgaXM/CgpUaGlzIHBhdGNoIChvciBhIHNvbHV0aW9uIGZpeGluZyB0aGlz
IGlzc3VlKSBpcyBuZWNlc3NhcnkgdG8gc3VwcG9ydCBtaWtyb3RpayBpcHE0MHh4IGRldmljZXMs
IHNlZSBmb3IgaW5zdGFuY2UgUFIgIzMwMzcKClRoYW5rcywKVGhpYmF1dApfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcg
bGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3Blbndy
dC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
