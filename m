Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B425D642FE
	for <lists+openwrt-devel@lfdr.de>; Wed, 10 Jul 2019 09:42:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OgqmntDWQBdnoweBbOUT4lrQyayE1oQbHSs6rsAzon8=; b=sBF87q3KlECobSsOTG1bG6l8f6
	p9NjGpJHIrsdf+R9jUL93gJ04lD+wLsDGR3KrR4ktEhwnjtAs7A9rTS9GxTLdsh1QMqTQTngqtcQl
	+I/RDO4QhHQn1DlP/hXiVvYP169t7zRWx9GYucCwD49ZGxjkY8ZNB4AijwTiKgihoWbb72mZqKsV/
	RA/1xJpu88gQpJ9cEzgZfF/oNn2dKa+ZzVjHwtl+YhrDtqmUKjKPvkD7XvMbXpkF22vmlZtY+U/kM
	yL/Y2WVc3vJ/qN9qx9Ow1m24nwSSHzeZe4FCDOmjjoUiwHAQ0LZU0tK8Va6DyCOwVqA2cxRjNPMZ6
	ZQfcdG8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl7Es-0001p7-9w; Wed, 10 Jul 2019 07:42:06 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl7Ea-0001oA-Vx
 for openwrt-devel@lists.openwrt.org; Wed, 10 Jul 2019 07:41:50 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 170423590;
 Wed, 10 Jul 2019 09:41:41 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 49a42610;
 Wed, 10 Jul 2019 09:41:33 +0200 (CEST)
Date: Wed, 10 Jul 2019 09:41:33 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Hauke Mehrtens <hauke@hauke-m.de>
Message-ID: <20190710074133.GF55350@meh.true.cz>
References: <20190707170411.3393-1-hauke@hauke-m.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190707170411.3393-1-hauke@hauke-m.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_004149_181549_033D6E6E 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH] mac80211: Update to version 5.2-rc7
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGF1a2UgTWVocnRlbnMgPGhhdWtlQGhhdWtlLW0uZGU+IFsyMDE5LTA3LTA3IDE5OjA0OjExXToK
CkhpIEhhdWtlLAoKPiBUaGlzIHVwZGF0ZXMgbWFjODAyMTEgdG8gdmVyc2lvbiA1LjItcmM3LCB0
aGlzIGNvbnRhaW5zIGFsbCB0aGUgY2hhbmdlcwo+IHRvIHRoZSB3aXJlbGVzcyBzdWJzeXN0ZW0g
dXAgdG8gTGludXggNS4yLXJjNy4KCnRoYW5rcyBhIGxvdCBmb3IgdGhpcyB1cGRhdGUhCgo+ICog
VGhlIHJlbW92ZWQgcGF0Y2hlcyBhcmUgYXBwbGllZCB1cHN0cmVhbQo+ICogYjQzIG5vdyB1c2Vz
IGttb2QtbGliLWNvcmRpYwo+ICogVXBkYXRlIHRoZSBubDgwMjExLmggZmlsZSBpbiBpdyB0byBt
YXRjaCBiYWNrcG9ydHMgdmVyc2lvbi4KPiAqIFJlbW92ZSB0aGUgdHdvIGJhY2twb3J0cyBmcm9t
IGtlcm5lbCA0LjksIHRoZXkgd2VyZSBuZWVkZWQgZm9yIG10NzYsCj4gICBidXQgdGhhdCBjYW4g
dXNlIHRoZSB2ZXJzaW9uIGZyb20gYmFja3BvcnRzIG5vdywgb3RoZXJ3aXNlIHRoZXkKPiAgIGNv
bGxpZGUgYW5kIGNhdXNlIGNvbXBpbGUgZXJyb3JzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEhhdWtl
IE1laHJ0ZW5zIDxoYXVrZUBoYXVrZS1tLmRlPgo+IC0tLQo+IAo+IFRoaXMgcGF0Y2ggaXMgYWxz
byBhdmFpbGFibGUgaW4gbXkgZ2l0IHRyZWUgYXQ6Cj4gaHR0cHM6Ly9naXQub3BlbndydC5vcmcv
P3A9b3BlbndydC9zdGFnaW5nL2hhdWtlLmdpdDthPXNob3J0bG9nO2g9cmVmcy9oZWFkcy9tYWM4
MDIxMS01LjIKCkkndmUgbWVyZ2VkIHRoaXMgY29tcGxldGUgYnJhbmNoIGluIG15IHN0YWdpbmcg
dHJlZSBhbmQgdGVzdGVkIGl0IG92ZXJuaWdodCBvbgpteSBtdDc2MjArbXQ3NjEwZSAoNC4xNCkg
YW5kIGF0aDc5K1FDQTk4ODAgKDQuMTkpIGFuZCBJIGRpZG4ndCBleHBlcmllbmNlZCBhbnkKaXNz
dWUuCgpBY2tlZC1ieTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGlu
ZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVu
d3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
