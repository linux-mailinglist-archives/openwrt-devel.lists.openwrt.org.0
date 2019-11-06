Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A54AF2085
	for <lists+openwrt-devel@lfdr.de>; Wed,  6 Nov 2019 22:18:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=b8DwhPdXbsDgAwnhsI5QK+wpgJ06CmuyETm4TT7v9zA=; b=hYQG6fEDHPEQkiQ7IbIs+fzyV
	k1vtsyb4aLyGMtdvhv+NTiPJhvUfolyFrrgtCY256nine7pipwEoAMf3HmgoFn6D+45hNxxY041T4
	wQWgpkLNisP5NrNSwYi0I2N0Kqn04wZzu4xqXfalhSztue5gFqIpXqfkGT0N9YqiZNZzvUhSzglq0
	Gyzt7xrqSGWURAkDEEBGloiFbYFyQiqPJFUkFztTiJILtncY6/IHCh2Q5PjDgNPOnSO01NPToTZ0z
	q4qauf1YIxM0UC/0yDKrQZQ6HcFQvdNDJFmclQ5bYQP0c40MEWMIq9XfwMw5jwg7Z4VEgdwXCaGi4
	BF/q3mP0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSSgh-00011r-Le; Wed, 06 Nov 2019 21:17:59 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSSga-00011G-0u
 for openwrt-devel@lists.openwrt.org; Wed, 06 Nov 2019 21:17:53 +0000
X-Originating-IP: 168.105.246.158
Received: from [168.105.246.158]
 (dhcp-168-105-246-158.wireless.manoa.hawaii.edu [168.105.246.158])
 (Authenticated sender: mail@aparcar.org)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 07B7C1C0003;
 Wed,  6 Nov 2019 21:17:40 +0000 (UTC)
To: =?UTF-8?Q?Bj=c3=b8rn_Mork?= <bjorn@mork.no>
References: <20191106002530.3314-1-mail@aparcar.org>
 <87v9rxzb5r.fsf@miraculix.mork.no>
From: Paul Spooren <mail@aparcar.org>
Message-ID: <24f358ab-ccad-c763-f2ee-f4b45a1be395@aparcar.org>
Date: Wed, 6 Nov 2019 11:17:38 -1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <87v9rxzb5r.fsf@miraculix.mork.no>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_131752_200734_40CD2D44 
X-CRM114-Status: UNSURE (   6.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ramips,
 mt7520: reproducible elecom-header uid/gid
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
Cc: openwrt-devel@lists.openwrt.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T2ggdGhhbmtzLCB1cGRhdGVkLi4uCgpPbiAxMS81LzE5IDEwOjAxIFBNLCBCasO4cm4gTW9yayB3
cm90ZToKPiBzdWJqZWN0IHR5cG8uICBJIHdhcyBjdXJpb3VzIGFib3V0IHRoYXQgbmV3IGNoaXAg
Oi0pCj4KPgo+IEJqw7hybgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5v
cGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3Bl
bndydC1kZXZlbAo=
