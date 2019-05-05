Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCED213EF2
	for <lists+openwrt-devel@lfdr.de>; Sun,  5 May 2019 12:54:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kRb9xGDONfMPkWKEd5A66I4kBPL203npuAjL24vy+O4=; b=pArIX3haH9/3Zn
	XeiBiX76RIIittxygBHhtR/aVvTDdAX6H9LaLEmPNfJTS/BW3/birs9vyrqJYftjcJGvNl5lA3o4i
	mn5REOsRtBhWk5BhWAxu9LxjHRJ3YEp/ynPJb7AZAfPhbt1k5uR1U3R5WCAFkj8qcYXnMSF/rhYzs
	RNgRNjmaT9sDuiJTh4Mm+ynVBOCpnvX7/UNGMGeMfFWOiNvvFRVrDRsxFIs3QxXsxm8zWRQd2MdoT
	r5MnBrEpBEhvtRdLvZIyDJwsg3A5YvXyttuAOjsmQh+5vFFTPna82piSSvCS/19WLXJoVIMeynom9
	Jrd4ByVlQ/+DEIMWklmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNEmF-0001MK-S2; Sun, 05 May 2019 10:53:51 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNEm8-0001M1-VP
 for openwrt-devel@lists.openwrt.org; Sun, 05 May 2019 10:53:46 +0000
Received: by mail-ot1-x341.google.com with SMTP id 96so1089067otf.1
 for <openwrt-devel@lists.openwrt.org>; Sun, 05 May 2019 03:53:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=GmI+uzbliR7A6h1fDQYc3dl1I111zzg0XGdN6Id8idE=;
 b=sdAp5M38m1c6H3b1sMbv7GM61OvXJvY5s6mU5uaNn94ccfEiRbi76Ay564HNvOuK1J
 HUyqjMlP4tyYL2n9i2yMWqnnt2U3fXZDtzhBG6jB7L+KdybgYG7jGMZyjJoUWwf5f1TP
 6OPJJL6pRs7l/HNxc/s0g4Hqme8sv9NkaJkaF8Uwbkgs3gpyiAAbgBr4WB2+hKBpIn04
 SdxkF7yRHh6OWu9+rJQkup9vhMYoN/50g8VNcCyjGQ4ae8OuPqQwz6kc5S7ZL/8GSfr5
 JvgDznfvL5OWG+uxEbJARUQdHOApm8yFAeoVaWt3yVG1rhN8jLO2lHtm5vqlZ51tThAg
 VJmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=GmI+uzbliR7A6h1fDQYc3dl1I111zzg0XGdN6Id8idE=;
 b=LjQdyEVoDhikeGg6S6z1ltv49D19jR+mOOeZ3xoeTmcJ5TS5XsWGN4rSzvriENGZhp
 /VYTxmWSCZNHffOxO+vS+2DUIPC47Bqxvf3icmHivRa2NERFdHYM79uygkrqq6WlS3xj
 /cz3cMhjE2dT9PWf5IqGRKIieir4KTQ1gqZVlEtHS/OcbfH7WjOK71RlxrjKM+hlcfPE
 +mqUlSUOJQzazo8MD370A09KaW+mIyv4WQ04sGAD/rkxYtPvol0GQjbwmLqOZnKTxGNY
 oWVh/TyUh319TYHOwabLGyB6yJ07esCjvKx1yrPJO12uXekL9nXANpucsGKEIn6cwdiY
 S9vQ==
X-Gm-Message-State: APjAAAWf6cH5Hj5x6kj2TtRrVACEP8cuUBgbn+rSCdJjZPZ/XJNxCL/5
 uRDtJV5XLHSiUQJmPYAoXWQwL4tRU7rP00auyUkEbA==
X-Google-Smtp-Source: APXvYqzN8+cUfW50sVaz4EI0pQfzbEZWk7NC3RHUeLBInBrPEG9/7k7Sgljkfyw+++R0JSU7ezfm9seXvpaVif6HMHw=
X-Received: by 2002:a9d:4c8a:: with SMTP id m10mr13193845otf.322.1557053621558; 
 Sun, 05 May 2019 03:53:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:4908:0:0:0:0:0 with HTTP;
 Sun, 5 May 2019 03:53:40 -0700 (PDT)
In-Reply-To: <20190503145852.6125-1-kristian.evensen@gmail.com>
References: <20190503145852.6125-1-kristian.evensen@gmail.com>
From: Tom Psyborg <pozega.tomislav@gmail.com>
Date: Sun, 5 May 2019 12:53:40 +0200
Message-ID: <CAKR_QVJr+jhSwAM05fh_pmsHBKY=KxwWD8+HziN_15Zxzrn0pw@mail.gmail.com>
To: Kristian Evensen <kristian.evensen@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_035345_039525_04B32F32 
X-CRM114-Status: UNSURE (   7.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pozega.tomislav[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH v2] ramips: Add support for Head Weblink
 HDRM200
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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

On 03/05/2019, Kristian Evensen <kristian.evensen@gmail.com> wrote:
> Head Weblink HDRM200 is a dual-sim router based on MT7620A. The detailed
> specifications are:
>
> - MT7620A (580MHz)
> - 64MB RAM
> - 16MB of flash (SPI NOR)
> - 6x 10/100Mbps Ethernet (MT7620A built-in switch)
> - 1x microSD slot
> - 1x miniPCIe slot (only USB2.0 bus)
> - 2x SIM slots (standard size)
> - 1x USB2.0 port
> - 1x 2.4GHz wifi (rt2800)
> - 1x 5GHz wifi (mt7621)

Hi

mt7621 is not wifi chip, you should update the description or just
leave mt76 if you intention is to specify supporting driver.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
