Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F158B1BD7EA
	for <lists+openwrt-devel@lfdr.de>; Wed, 29 Apr 2020 11:07:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WNOqO/2FhbAh6qTmHhaNYih5l0EnHysNm616XPAQhPs=; b=X8jCcMSUEBSIehuHNYKEOlM45B
	G0jxJwZqVog94jtTWY28+tl1VEG3kwnkw1Kt33A+IoO+QKBkeFat+Ki+FX3jWFO8wv+T+Htp0YRqH
	HIgLu5sq0MWvPVooOOve/dS7jOJMlaBoth4W99foqhuVrXPxi4eAK4ji2ofSlahp//PpemG/4u+P1
	2K/b4Blc+dIsIytluWxir8znJr0fymguXuB9LArS4LFg+BI0VbY5hiDfkG0AMQYWdr3PdFVdG+Xyf
	X5eTYHR5sNHJtkZ8SIi0lZJgOH+kvdBsZWnPq9Zr+9C29THC7bHc1ez9qLWVOEw/sMd1dP3bviFuN
	gPTaqj1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTig6-0000TO-Du; Wed, 29 Apr 2020 09:06:50 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTifz-0000S9-GS
 for openwrt-devel@lists.openwrt.org; Wed, 29 Apr 2020 09:06:45 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id E9A153B65;
 Wed, 29 Apr 2020 11:06:39 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 69a9190f;
 Wed, 29 Apr 2020 11:06:26 +0200 (CEST)
Date: Wed, 29 Apr 2020 11:06:25 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Philip Prindeville <philipp_subx@redfish-solutions.com>
Message-ID: <20200429090625.GA22217@meh.true.cz>
References: <8E30BC1C-83C5-4CB1-881C-344B6CD865D2@redfish-solutions.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8E30BC1C-83C5-4CB1-881C-344B6CD865D2@redfish-solutions.com>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_020643_696775_ED5C7196 
X-CRM114-Status: UNSURE (   5.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] Signing, meta-data,
 etc. on images and losetup mounts...
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

UGhpbGlwIFByaW5kZXZpbGxlIDxwaGlsaXBwX3N1YnhAcmVkZmlzaC1zb2x1dGlvbnMuY29tPiBb
MjAyMC0wNC0yNyAxODoxNzowMV06Cgo+IEkgd2FzIHRyeWluZyB0byB0YWtlIGEgb3BlbndydC0q
LWdlbmVyaWMtc3F1YXNoZnMtY29tYmluZWQtZWZpLmltZyBmaWxlIGZyb20gbWFzdGVyIGFuZCB2
ZXJpZnkgaXQgZm9yIGNvcnJlY3RuZXNzIHdpdGgg4oCcbG9zZXR1cOKAnSwgZXRjLgo+IEJ1dCBs
b3NldHVwIGJhaWxlZCBiZWNhdXNlIHRoZSBpbWFnZSB3YXNu4oCZdCBhIG11bHRpcGxlIG9mIDUx
MiBieXRlcyBsb25nLgoKSXQgd29ya3MgZm9yIG1lICh0bSk6CgogJCBiaW53YWxrIGJpbi90YXJn
ZXRzL3g4Ni82NC9vcGVud3J0LXg4Ni02NC1nZW5lcmljLXNxdWFzaGZzLWNvbWJpbmVkLWVmaS5p
bWcgfCBncmVwIFNxdWFzaGZzCiAxNzMwMTUwNCAgICAgIDB4MTA4MDAwMCAgICAgICBTcXVhc2hm
cyBmaWxlc3lzdGVtLCBsaXR0bGUgZW5kaWFuLCB2ZXJzaW9uIDQuMCwgY29tcHJlc3Npb246eHos
IHNpemU6IDY2NzIyNzAgYnl0ZXMsIDEyNjYgaW5vZGVzLCBibG9ja3NpemU6IDI2MjE0NCBieXRl
cywgY3JlYXRlZDogMjAyMC0wNC0yOSAwNzo0MzozOQoKICQgc3VkbyBtb3VudCAtbyBsb29wLG9m
ZnNldD0xNzMwMTUwNCBiaW4vdGFyZ2V0cy94ODYvNjQvb3BlbndydC14ODYtNjQtZ2VuZXJpYy1z
cXVhc2hmcy1jb21iaW5lZC1lZmkuaW1nIHRtcAoKICQgY2F0IHRtcC9ldGMvb3BlbndydF92ZXJz
aW9uIAogcjEzMTIyKzctNTIyZjZiN2VlZTQ3CgpCVFcgaXQncyB1c3VhbGx5IGZhc3RlciB0byB2
ZXJpZnkgdGhlIGNvcnJlY3RuZXNzIHdpdGggUUVNVToKCiAkIC4vc2NyaXB0cy9xZW11c3RhcnQg
eDg2IDY0IGJpbi90YXJnZXRzL3g4Ni82NC9vcGVud3J0LXg4Ni02NC1nZW5lcmljLXNxdWFzaGZz
LWNvbWJpbmVkLWVmaS5pbWcKCi0tIHluZXp6CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRl
dmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9vcGVud3J0LWRldmVsCg==
