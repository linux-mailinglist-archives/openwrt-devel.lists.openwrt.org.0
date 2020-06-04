Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC9731EE597
	for <lists+openwrt-devel@lfdr.de>; Thu,  4 Jun 2020 15:46:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LrSKL7S9JVdIl2MFneMX4TB6yQSUp6Qkr5Ay2tsFK7Q=; b=oGCgocVCmjgcJ9
	K6ZLAenLMnZyCRFUCD/Pggu21AvlM30mlJL95AX7Lb6JGhvxglUcWuEcejcyXKCqnazIuxj9njwpS
	mc4A0t1hqAIIhrkLFNTmSGsrBlacXsWNNx0r5dDPYLG01X2Bvq+uTslsLXC8PXCYaEBllZ7xLjSX0
	wnXss/mHGznkp61o0hIio0sZLVnjtO6qjyZ6lJa3gM3lhvFU3hvadx+MTf1PW4b1aR1MZf3nz5tKC
	rRaM+6dmRXTaTM/E5NDrHSrMZNcNGSbQZTZCjaC66P/RZv7rXuM+2vPrkZFEZjNbv5WvgEuy1srgz
	JlxkudF9W+4Bck+WBjaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgqCm-0002Oz-9A; Thu, 04 Jun 2020 13:46:48 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgqCc-0002Et-KO
 for openwrt-devel@lists.openwrt.org; Thu, 04 Jun 2020 13:46:40 +0000
Received: by mail-lj1-x243.google.com with SMTP id a9so3804099ljn.6
 for <openwrt-devel@lists.openwrt.org>; Thu, 04 Jun 2020 06:46:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=zG6QbF1wdMcYIRzPvJ4duLncmA2m4EvWXzaw0HIV9Lw=;
 b=jk5G7TEUzDgNhu9YgwRIivF0a7bajz1E6wZKBi0BaQCe8lfss8nFzBn6z9nWYnDYsP
 jdCx4UJtB4TkJCluynM/e1MtWSKqI68vPYz0eTvplONAV8+OG8GLct7dXUQFmrF67FPm
 7WrIr8P2P8kOcfcRDz+3VmKXSR8ohcRtgb4El8josvgXmYUDJhQtDKVWonW5oCOCZsfd
 wCyAjUGxvG5HFyhlZBMmPGAagqQqdKRCibbxc/2lC8lZk/wxZFH1AuC+Db6T1yjxVICI
 yGFTLSvNLXJCIElr1BXDz3Q00Uf0/FF5uXM4165jdSHrf1Z1QpoIj7oK1KvmfT/TWKeK
 AeFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=zG6QbF1wdMcYIRzPvJ4duLncmA2m4EvWXzaw0HIV9Lw=;
 b=o975YeGk8owjJV8y3g/noHBG/twp5M+QtUrGidpsGf5FvUxZ+RIXNxICnjLxlP7+5U
 guCu/xsF2BmpPbspIK6T3/+ziEuK9zRGEZRpDTVHtnTGFmG53d8mQZFaMTwvJQfMAGWM
 TDOx0pUMGx5QXLv7v5G20H7BljiLvtlUmLT5756X3ZOMrin+eTBLzB4oFgwqjphylhBk
 QkOPfCiBt5NWWKRnH6l9qi9Fswgrx9LFMnocOKjI3OME0UKZjrzj8+cwB8W5tOfI8Y69
 e633zLoRBm4fIIU4ieOOwbtw6louVqICjQHDTtqBnkpFBw4zF9R769CiV5Mqi/pvyap9
 /+CA==
X-Gm-Message-State: AOAM5325W8tv+ZiGNmZUlPspEGqCl4LEVJbyjIOd0Xc38IeQo25TCwGW
 KJXH0ui5jzHd/O6pzTQnp2c=
X-Google-Smtp-Source: ABdhPJynBBumdk+tJr+LkCnEsfvWRHeepOdsKYo1XX4Dyq/ZzYKGyrlX0IYfDCr0lOBv28efmvaMWw==
X-Received: by 2002:a2e:b4b3:: with SMTP id q19mr2148982ljm.90.1591278396475; 
 Thu, 04 Jun 2020 06:46:36 -0700 (PDT)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id l8sm1200478ljc.59.2020.06.04.06.46.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 06:46:35 -0700 (PDT)
Received: from home.paul.comp (home.paul.comp [IPv6:0:0:0:0:0:0:0:1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 054DkWF0001318; Thu, 4 Jun 2020 16:46:33 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id 054DkWpW001317;
 Thu, 4 Jun 2020 16:46:32 +0300
Date: Thu, 4 Jun 2020 16:46:32 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: Stan Grishin <stangri@melmac.net>
Message-ID: <20200604134632.GQ24504@home.paul.comp>
References: <CALu2O0Rzyg+Kv7h=tX7Gg9s9shPAUtb46oLsYpD61OYZ=VYsLg@mail.gmail.com>
 <CAJQUmm7Pf2e+P+KLVPQsL2pU=WC6b2z734e0LObjaGeFviKAkw@mail.gmail.com>
 <CALu2O0TWrDkEZUXmrq2U16Ej6m-Rwhhwdr-eW5FjuitUu-FCag@mail.gmail.com>
 <CAJQUmm7XTfcuiTQaGo=w=f9XyTMxNFu8jfw6rxHr8PyEE-pGJw@mail.gmail.com>
 <CALu2O0RUvLaTthbO_jbB=zH-4Cx6ZsGz+nDF8kqfd1Z3Dpc0vA@mail.gmail.com>
 <20200604130245.GO24504@home.paul.comp>
 <CALu2O0QAghCzd-dYu7TbVuXGpF2OEAXcw1rAEG61nD_nHuZL=w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALu2O0QAghCzd-dYu7TbVuXGpF2OEAXcw1rAEG61nD_nHuZL=w@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_064638_692088_30F067F5 
X-CRM114-Status: UNSURE (   5.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [fercerpav[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] base-files: add list-enabled/disabled
 to service function in /etc/profile
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>,
 Michael Jones <mike@meshplusplus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Thu, Jun 04, 2020 at 06:31:36AM -0700, Stan Grishin wrote:
> Thanks. Should I replace list-enabled and list-disabled with list, doing this:

I'm not sure it's anywhere close to the optimal solution with ubus and
jsonfilter, but I'm not well-versed in the area enough to suggest a
proper one, sorry.

-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav@gmail.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
