Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 658EA3A169
	for <lists+openwrt-devel@lfdr.de>; Sat,  8 Jun 2019 21:05:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wWoXgFa+EhLBry/G4gggwjyyxsiFIWLy+WSTx6CrU7U=; b=qTxqVBwsEIJAVd
	OM3aJenjOm7hbGBs7Y3HrRHCk/ahxtgCd9jghcpfo2PvsAgXDy3JBp7yPf6EHhlv7SDFn3XY6v+PN
	OyRwwr3oK/gMWbpWDfKHBTPN4MPHNPkofBtR9x1IyWv0PGSBGVyQwIb5sRtBc+88lS/EvOAbQyqeG
	96mvKfWEVAuiO8dWoWS+09tOAHDVTCJcDkImP2w3cuQrejPktmyXYAnycf/5yOUfTxdodqamSDWIh
	9VuYpNfCAdcAr/HaH+spU2ibnUMCfJ0FlhLy6EWfcL6e3Q1F1ifY3ipdPWhstnf/442hbC5S9fU/C
	T+qvs1tSzYD3i6BoaJ/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZgex-0000Uj-5C; Sat, 08 Jun 2019 19:05:47 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZgdm-0006pN-Hn
 for openwrt-devel@lists.openwrt.org; Sat, 08 Jun 2019 19:04:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vGb6sZ8KzALHYl3lM6vd0PUiqJnRuuX8STw3Ib1xY/M=; b=BEpOq8YMasG53wDCwWFQN16iHr
 2t/1n4TM3UhKvCDV2qLMxqoli+e+V2JlYUXmhmXog+EMDPoKzP8A98pBixp6vRlqPSofV015jFFyv
 +CuYz5UWZO1Gt48rhLiP8YDWvv8RJJ+xVVeiv7mGNN8tAE6HemgeeSCMZxFdKrdrmc8Y=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hZgde-0006JP-Cd; Sat, 08 Jun 2019 21:04:26 +0200
Date: Sat, 8 Jun 2019 21:04:26 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Daniel Santos <daniel.santos@pobox.com>
Message-ID: <20190608190426.GG22700@lunn.ch>
References: <5316c6da-1966-4896-6f4d-8120d9f1ff6e@pobox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5316c6da-1966-4896-6f4d-8120d9f1ff6e@pobox.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_120434_782213_DD18C107 
X-CRM114-Status: UNSURE (   4.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Using ethtool or swconfig to change link
 settings for mt7620a?
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
Cc: Vitaly Chekryzhev <13hakta@gmail.com>, netdev@vger.kernel.org,
 openwrt-devel <openwrt-devel@lists.openwrt.org>, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Sat, Jun 08, 2019 at 04:06:54AM -0500, Daniel Santos wrote:
> Hello,

Hi Daniel

As Daniel Golle pointed out, swconfig is an openwrt only
thing. Mainline people on netdev are unlikely to help you much. If you
do however decide to work on the mainline DSA driver, people here will
offer help, answers to questions, etc. The DSA driver will give you
full control of the per port PHY configuration via ethtool.

      Andrew

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
