Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3714C80AAC
	for <lists+openwrt-devel@lfdr.de>; Sun,  4 Aug 2019 13:08:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yIhx4Fw0FyZ+g6NiNgXMJsVa5RwVQceSPbMtOtFE70c=; b=k5Rte5iP2v8pP5
	WTbb/ro9CKCCBgLLtA2rkU3UC+wDDtXKqMmf1CkaU62HnHQhXvB2X0hcPQxeGgIjzfIoJm8VoZDps
	hNkTykRpmHMlxBiPQuY5DtlomMGH6688KKRuV7QlIohP4XWhy+4d0ILCz9RHOjt+L0ehb/7WEyd83
	NBKPaXw2JXoTOHe/k0DM8u4Xgl2TuEqh2y/mB+/Aar4XJA5Wmuvow5UY0p6wymV2UrDUK0wiDFkJz
	5M3g0BR7/93PMtLD6GhfInGHvIX2qv1N1u3yg6HvUNHqiX4DWdYjbSBZY/YJsZzGAQFOHCPxc+cwg
	KrpPIM+OLzpc/sVWuEcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huENR-0006wc-SZ; Sun, 04 Aug 2019 11:08:37 +0000
Received: from jake.logic.tuwien.ac.at ([128.130.175.117])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1huENL-0006wH-Ay
 for openwrt-devel@lists.openwrt.org; Sun, 04 Aug 2019 11:08:32 +0000
Received: from t450.aithon.duckdns.org (morty.logic.tuwien.ac.at
 [128.130.175.112])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by jake.logic.tuwien.ac.at (Postfix) with ESMTPSA id 7D23DC0341;
 Sun,  4 Aug 2019 13:08:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=logic.at; s=dkim;
 t=1564916910; bh=2tc6raR6/t58Qke5k1PzzAwIcLWdegUblBoHPxyXQRM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mk6yOSbuUbLHXzDq5D5BRcaf0m8BXHZgEHE5WRuhiBt3ddxgQmIliGN2oXE+qE+cf
 S6URexeLTmhAjD+aR2DGaoI9DMyOsigDZA29kpiu5/WO/TitMWVz5dElEqFvBomFBG
 J94in04NGqzHsaGcD3DUfKDFYf4/ZbL9aXVSBPyc=
Received: from localhost (t450.aithon.duckdns.org [local])
 by t450.aithon.duckdns.org (OpenSMTPD) with ESMTPA id bca6f2ec;
 Sun, 4 Aug 2019 13:08:25 +0200 (CEST)
Date: Sun, 4 Aug 2019 13:08:25 +0200
From: Ingo Feinerer <feinerer@logic.at>
To: John Crispin <john@phrozen.org>
Message-ID: <20190804110825.GA55553@t450.aithon.duckdns.org>
References: <20190804045636.37168-1-feinerer@logic.at>
 <948c9a08-2e1a-6a8f-55b6-fd49902ce7d3@phrozen.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <948c9a08-2e1a-6a8f-55b6-fd49902ce7d3@phrozen.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_040831_536061_73E50B0D 
X-CRM114-Status: GOOD (  10.69  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [128.130.175.117 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH] umbim: add home provider query support
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Sun, Aug 04, 2019 at 10:25:01AM +0200, John Crispin wrote:
> > +static int
> > +mbim_home_provider_response(void *buffer, size_t len)
> > +{
> > +	struct mbim_basic_connect_home_provider_r *state = (struct mbim_basic_connect_home_provider_r *) buffer;
> > +	char *provider_id, *provider_name;
> > +
> > +	if (len < sizeof(struct mbim_basic_connect_home_provider_r)) {
> > +		fprintf(stderr, "message not long enough\n");
> > +		return -1;
> > +	}
> > +	struct mbimprovider *provider = &state->provider;
> 
> please move this to the start of the function

Thanks for the remark. I moved the declaration to the start of the
function but kept the initialization below the length check (with the
idea to better not touch the struct if something is known to be wrong
with it).

Best regards,
Ingo

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
