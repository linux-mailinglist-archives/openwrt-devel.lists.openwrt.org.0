Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AAC1135353
	for <lists+openwrt-devel@lfdr.de>; Thu,  9 Jan 2020 07:41:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JtABmk6OoQWCE+S+IgCMLmskgb1Bt0cFfFYRXmWYB8U=; b=tO8cHTsv2Z9fk9
	1oqAoqm3Qf6hS9ccPPMPyLJkIs6pF616cSWHLVC/8Bz0VWSXXpby5lvYtYIluCpLq6Mx/WD6xmII+
	IECATDjas0Z4rpY8Sx/+Vki2ZjoKh3wTo7tQb7+M5ucxENGcy2bs9KtipEo6KejgEW5U53q3oFRgC
	iyl2R+ELf2ZAjVb7nbsYsEYfW+rx5yfmahcQoVLjjqmCNaodP26Mo0kzprcNtNBfRURZU2aHTLslD
	inSJ31PaMHW7fwB28r03nCQ2378BJwsaxVCNitbsOlWErQ4c7rSLDS2u3FTRJTXzBNVAJFPKjaQvo
	oBY9UC1OPRN6DhFfPbqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipRV2-0000vO-CS; Thu, 09 Jan 2020 06:40:56 +0000
Received: from mail-ot1-x333.google.com ([2607:f8b0:4864:20::333])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipRUt-0000un-5e
 for openwrt-devel@lists.openwrt.org; Thu, 09 Jan 2020 06:40:48 +0000
Received: by mail-ot1-x333.google.com with SMTP id 66so6186001otd.9
 for <openwrt-devel@lists.openwrt.org>; Wed, 08 Jan 2020 22:40:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=HemNQWS4akvhL2L8KqLdyB88kCYZYxh+txsSmt4puQ8=;
 b=VpwQH5meWgim+FTHvJZ9qgmtaNTjhHKN6jkgZSIr5awXveFtW75LwbU/HqF5BFnTBw
 RZwQGqwDvmZ2OqBoURiv44VuU8O+xSLEZCl0SueCoyEPHqa1MebVQylVrLqh6xT9ghqI
 pymIKnaJ5cKscaBGKEwbavZ4kvlDOkmyKQE8xDNrexIQIeaNxy4k43oBoz4dBTHPrBLO
 UzZPWYLEvQ2TwlpGCVM1Kr4aUZQWUW6aDUUKw9723t98NzAHQV1i9VycJeAGeak5yKp4
 aI5yMqThK0Y+PctyypkYSkvmoDKZpKU0hrQh1H0pgzMWZeFenAnDFJBOasbDHdpiMMBc
 HqxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=HemNQWS4akvhL2L8KqLdyB88kCYZYxh+txsSmt4puQ8=;
 b=aKySGgeoCMpX+3roZ8b4YxnTYjtT8oOw8YpnODmZFzly9YEuLAUPmh9MsrBDhduDhK
 lq/52hQvfCwO+xJrwqluXxIzSH3n9ZR2fxQHuU8OcDv4TtarwULdFVLniwYjYJWnr2Us
 qQfljD6KnlCLLb9f5zqCJAz7DDgPjn3nOvEDr/nvRZ5E8DPqhw82De2pQzu9HiV+Ft0j
 YVQXXK+Afn48p4HMW6t5p//EumwAs8qG+NWXsJtkjShuSOsxEsPY5pVJiNPIZgY7Zd+W
 9OXPJni2gm9Y08o8zbvlRC1umPllrgvYTGmTIUGRbtTKfRg0KcaDS0U8yOgXkEZVu+sa
 fxDA==
X-Gm-Message-State: APjAAAV7H40t4aHdu1riQuxtDceBl4mtQxK6zbQqmIEdG78lamKdXuU2
 RvEIF85eRHhkYJUpoKz4NXjXLasD2hfyoSFaf1g=
X-Google-Smtp-Source: APXvYqxxlrBGlD90Oh/eO7RWxgnyZ/ulAMKaIDt479fGFhEUo+jjLloZxNDJQ+ux43valafHsjBeI7VUQsI66mqu7XY=
X-Received: by 2002:a05:6830:1116:: with SMTP id
 w22mr7477742otq.63.1578552046363; 
 Wed, 08 Jan 2020 22:40:46 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a9d:362:0:0:0:0:0 with HTTP;
 Wed, 8 Jan 2020 22:40:45 -0800 (PST)
In-Reply-To: <8038c121-9a0a-2003-4db1-7edf603c26e5@gmail.com>
References: <b9a184d2-a2bc-5b53-8daa-f939eb9915c4@gmail.com>
 <20200106162058.GA86978@meh.true.cz>
 <ea2a62b2-04bd-ccab-1658-049c30f2635b@gmail.com>
 <a8930dd7-a4f3-d241-9bd1-e2580ca2cea3@hauke-m.de>
 <8038c121-9a0a-2003-4db1-7edf603c26e5@gmail.com>
From: Tom Psyborg <pozega.tomislav@gmail.com>
Date: Thu, 9 Jan 2020 07:40:45 +0100
Message-ID: <CAKR_QVK3M4EK8H4f9Wm=U2mcqxp2eRuR4P3G5NB5JeYeY=iibw@mail.gmail.com>
To: e9hack <e9hack@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_224047_237619_61120475 
X-CRM114-Status: UNSURE (   5.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:333 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pozega.tomislav[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 2.0 PDS_TONAME_EQ_TOLOCAL_SHORT Short body with To: name matches
 everything in local email
Subject: Re: [OpenWrt-Devel] uhttpd/luci/rpcd is broken?
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

just to add to my previous message:

after 14 hours of uptime with both wifi interfaces enabled, but no
devices connected to them total available memory fell to 44MB, free
60MB. checked again after it passed 20 hours it was the same so no
further decrease.
all processes had max 2% of memory consumption, with exceptions for
hostapd and wpa_supplicant for both phys - these consumed 4% each, so
about 20MB of memory for 2 idle (beaconing) AP interfaces seems quite
a bit too much... r11895 - ath79

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
