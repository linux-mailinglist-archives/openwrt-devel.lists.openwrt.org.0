Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74346138862
	for <lists+openwrt-devel@lfdr.de>; Sun, 12 Jan 2020 22:55:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:References:
	Message-ID:Date:From:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:List-Owner; bh=5hF17Y3FEfdhHR26Ra+ufPrYE+yFA+8fTbqJo54O9uw=; b=RC
	oZUy1/jUY/kRo9s2KhbQZiNmEelPXviPULJiKvZ1jLnTIEv8CycoaZE67v85tPHagb3urI9uUmbL2
	Q8htfU4CeyicQ25MMK9UfOWMEurQsiiCxmAIb+oCmAgzKrEk1iL2ho/+7NWyLQykNWk2o39ASZBai
	K/hZUyXGdlW8EW6u+1zhrkCdF0Zp7ZYYrN7glMZWdWEoBKIHKYtYKuJ8kiosz47zmd/GiygUjGsob
	dP5snl3ksQ1CsaIv1TinoVK66XPyxoPSA0UA8tohIntkZBay2yZyyIJ53cCDnKWNZO+a22w9McXyP
	8YDAXam8ca60R8ONMCmzjjYKChXSusDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqlCX-0000By-Is; Sun, 12 Jan 2020 21:55:17 +0000
Received: from blaine.gmane.org ([195.159.176.226])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqlCN-0007Y8-Aj
 for openwrt-devel@lists.openwrt.org; Sun, 12 Jan 2020 21:55:08 +0000
Received: from list by blaine.gmane.org with local (Exim 4.89)
 (envelope-from <gceod-openwrt-devel@m.gmane.org>) id 1iqlBF-00038T-Kb
 for openwrt-devel@lists.openwrt.org; Sun, 12 Jan 2020 22:53:57 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: openwrt-devel@lists.openwrt.org
From: Daniel Gimpelevich <daniel@gimpelevich.san-francisco.ca.us>
Date: Sun, 12 Jan 2020 21:53:35 -0000 (UTC)
Message-ID: <qvg4gu$3sh2$1@blaine.gmane.org>
References: <90038f66-81fc-6b34-1b85-b47aab83368a@aparcar.org>
Mime-Version: 1.0
User-Agent: Pan/0.139 (Sexual Chocolate; GIT bf56508 git://git.gnome.org/pan2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_135507_549753_4439E3B6 
X-CRM114-Status: UNSURE (   7.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [RFC] commit message in YAML format for new
 devices
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Sun, 12 Jan 2020 11:47:29 -1000, Paul Spooren wrote:
> All commits adding new devices already include most relevant information
> for creating the overview. However it would be convenient if developers
> would format their commit messages in a generic format, therefore I'd
> propose the following:
> 
> Every commit message for newly added devices must contain a number of
> hardware information and steps for an initial installation.
> The hardware information should contain at least the following
> information, maybe more:
> 
> SoC, flash, ram, wifi, LEDs, buttons, USB, serial, vendor, model, device
> tree ID, Ethernet ports

Having just pitched this idea to you a few minutes ago, of course I'll be 
the first to ACK.


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
