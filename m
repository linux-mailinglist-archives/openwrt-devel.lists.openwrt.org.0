Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1CC51FCAB7
	for <lists+openwrt-devel@lfdr.de>; Wed, 17 Jun 2020 12:22:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:References:In-Reply-To:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xucRznbSupcCazP/hfLmj85EHQtOAwnGG+efL0LyKG8=; b=Jk7sHa+Dc0EbBY/Qu+Ovuty7i
	jQDO+PZrJh/AOXqgL1Q3sXXXfffGHyzFcTX9tWT8dNCvSHYkCdMj5P1DQ6o4WdRI4Kh6WnorW4HBA
	xagVDc2B9sUGw7yOihgLO/BRX2Gd6RCBAcpG53mEAm30S9NHKDXfQSaasJlkl42CFI4S771+2wbd2
	erMmsQdCMGcee/6EbOVNxWW7I6CTlOvo7W78NC5ROcBvhmx7OOABR+k2dRaJl3Hle5BQaC4aflz9x
	MkBG8xW4WP2PrXmS5TrYYD/gtDOVCmSLW1z7Sjuzvj4wy0UbnsfSikTbn3fX0pZRE91eLhEd05xVE
	suyXiWwCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlVD4-0001D5-Q5; Wed, 17 Jun 2020 10:22:22 +0000
Received: from host-88-217-225-28.customer.m-online.net ([88.217.225.28]
 helo=mail.dev.tdt.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlVCr-0001Bo-FM
 for openwrt-devel@lists.openwrt.org; Wed, 17 Jun 2020 10:22:11 +0000
Received: from mail.dev.tdt.de (localhost [IPv6:::1])
 by mail.dev.tdt.de (Postfix) with ESMTP id EA35F208E4;
 Wed, 17 Jun 2020 10:21:51 +0000 (UTC)
MIME-Version: 1.0
Date: Wed, 17 Jun 2020 12:21:51 +0200
From: Florian Eckert <fe@dev.tdt.de>
To: mail@adrianschmutzler.de
In-Reply-To: <00a001d643f4$c92fc2c0$5b8f4840$@adrianschmutzler.de>
References: <20200616082613.892-1-fe@dev.tdt.de>
 <00a001d643f4$c92fc2c0$5b8f4840$@adrianschmutzler.de>
Message-ID: <640cd222ceed3d9a5969ba454c3b607a@dev.tdt.de>
X-Sender: fe@dev.tdt.de
User-Agent: Roundcube Webmail/1.1.5
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED autolearn=ham
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.dev.tdt.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_032209_670347_3EF14349 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
Subject: Re: [OpenWrt-Devel] [PATCH] lantiq: add dsl line_state mapping
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
Cc: openwrt-devel@lists.openwrt.org, Eckert.Florian@googlemail.com,
 dev@kresin.me, john@phrozen.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgQWRyaWFuLAoKPj4gVGhlIGxpbmVfc3RhdGUgb2YgdGhlIERTTCBjb25uZWN0aW9uIGlzIGRl
c2NyaWJlZCBpbiB0aGUgc3lzdGVtIHZpYSBhCj4+IGhleGFkZWNpbWFsIHZhcmlhYmxlLiBXaXRo
IHRoaXMgY2hhbmdlIHRoZSBoZXhhZGVjaW1hbCBpcyBtYXBwZWQgdG8gYQo+PiBkZWNpbWFsIHZh
bHVlLiBXaXRoIHRoaXMgY2hhbmdlIGl0IGlzIG5vdyBwb3NzaWJsZSB0byBzdG9yZSB0aGlzIHZh
bHVlIAo+PiBpbiBhCj4+IGRhdGFiYXNlLCBzbyB0aGF0IGl0IGNhbiBiZSBlYXNpbHkgZXZhbHVh
dGVkLgo+IAo+IEludGVyZXN0aW5nIGZpbGUgdGhpcyBsYW50aXFfZHNsLnNoIC4uLgo+IAoKVGhh
dMK0cyBwcm9iYWJseSByaWdodCEKCj4gSSdtIHdvbmRlcmluZyB3aGV0aGVyIGFsbCBvZiB0aGlz
IHJlYWxseSBuZWVkIHRvIGJlIGluIHRoaXMgZmlsZSwgb3IKPiB3aGV0aGVyIHN0dWZmIGNhbiBi
ZSBtb3ZlZCB0byB0aGUgcGFja2FnZSBhY3R1YWxseSBkZWFsaW5nIHdpdGggaXQ/Cj4gVGhpcyBt
aWdodCBhbHNvIG1ha2UgaXQgZWFzaWVyIHRvIGNoYW5nZSBpdCB3aGVuIG5lY2Vzc2FyeS4KPiAK
ClRoaXMgZmlsZSBpcyBzb3VyY2VkIHR3aWNlOgotIGRzbF9jb250cm9sIG9mIHBhY2thZ2UgbHRx
LWFkc2wtYXBwIFsxXQotIGRzbF9jb250cm9sIG9mIHBhY2thZ2UgbHRxLXZkc2wtYXBwIFsyXQoK
SWYgd2UgdGFrZSB0aGlzIGZyb20gdGhlIHRhcmdldCBmb2xkZXIgdGhlbiB3ZSBoYXZlIHRvIG1h
a2Ugb3VyIG93biAKcGFja2V0IGx0cS1kc2wtY29tbW9uIGZvciBleGFtcGxlLgpBbmQgdGhlIHBh
Y2thZ2VzIGx0cS1hZHNsLWFwcCBhbmQgbHRxLXZkc2wtYXBwIGNvdWxkIGRlcGVuZCBvbiB0aGlz
LgoKV2hlbiB3ZSBjcmVhdGUgYSBuZXcgcGFja2FnZSwgd2UgbWF5IGFsc28gd2FudCB0byBtb3Zl
IG90aGVyIGZpbGVzIGZyb20gCnRoZSB0YXJnZXQgZGlyZWN0b3J5IHRvIHRoZSBuZXcgcGFja2Fn
ZT8KCi0gbGFudGlxLnNoIFszXSBUaGlzIGlzIHNvdXJjZWQgaW4gMDJfbmV0d29yayBmaWxlcyBv
biB0aGUgbGFudGlxIAp0YXJnZXRzLgotIGxlZF9kc2wuc2ggWzRdCi0gcHBwb2Euc2ggWzVdCi0g
dWNpLWRlZmF1bHRzIFs2XQotIGRzbF9ub3RpZnkuc2ggWzddCgpUaGVzZSBhcmUgY2FuZGlkYXRl
cyB0aGF0IGNvdWxkIGFsc28gbW92ZWQgdG8gdGhlIG5ldyBwYWNrYWdlCgpCZXN0IHJlZ2FyZHMK
CkZsb3JpYW4KClsxXSAKaHR0cHM6Ly9naXRodWIuY29tL29wZW53cnQvb3BlbndydC9ibG9iL21h
c3Rlci9wYWNrYWdlL25ldHdvcmsvY29uZmlnL2x0cS1hZHNsLWFwcC9maWxlcy9kc2xfY29udHJv
bCNMMTEKWzJdIApodHRwczovL2dpdGh1Yi5jb20vb3BlbndydC9vcGVud3J0L2Jsb2IvbWFzdGVy
L3BhY2thZ2UvbmV0d29yay9jb25maWcvbHRxLXZkc2wtYXBwL2ZpbGVzL2RzbF9jb250cm9sI0wx
MQpbM10gCmh0dHBzOi8vZ2l0aHViLmNvbS9vcGVud3J0L29wZW53cnQvYmxvYi9tYXN0ZXIvdGFy
Z2V0L2xpbnV4L2xhbnRpcS9iYXNlLWZpbGVzL2xpYi9mdW5jdGlvbnMvbGFudGlxLnNoCls0XSAK
aHR0cHM6Ly9naXRodWIuY29tL29wZW53cnQvb3BlbndydC9ibG9iL21hc3Rlci90YXJnZXQvbGlu
dXgvbGFudGlxL2Jhc2UtZmlsZXMvZXRjL2hvdHBsdWcuZC9kc2wvbGVkX2RzbC5zaApbNV0gCmh0
dHBzOi8vZ2l0aHViLmNvbS9vcGVud3J0L29wZW53cnQvYmxvYi9tYXN0ZXIvdGFyZ2V0L2xpbnV4
L2xhbnRpcS9iYXNlLWZpbGVzL2V0Yy9ob3RwbHVnLmQvZHNsL3BwcG9hLnNoCls2XSAKaHR0cHM6
Ly9naXRodWIuY29tL29wZW53cnQvb3BlbndydC90cmVlL21hc3Rlci90YXJnZXQvbGludXgvbGFu
dGlxL2Jhc2UtZmlsZXMvZXRjL3VjaS1kZWZhdWx0cwpbN10gCmh0dHBzOi8vZ2l0aHViLmNvbS9v
cGVud3J0L29wZW53cnQvYmxvYi9tYXN0ZXIvdGFyZ2V0L2xpbnV4L2xhbnRpcS9iYXNlLWZpbGVz
L3NiaW4vZHNsX25vdGlmeS5zaAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0
cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8v
b3BlbndydC1kZXZlbAo=
