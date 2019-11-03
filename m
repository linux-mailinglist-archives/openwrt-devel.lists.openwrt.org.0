Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 623DBED324
	for <lists+openwrt-devel@lfdr.de>; Sun,  3 Nov 2019 12:39:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WquSJNja7quTROEEw+WXNklKbNF20rFtvB435Y1SXV4=; b=SO7CBYePwi3iG5
	xdIrodguuwCjJSzaKhxX12/mz6bGNEySEfPCkKKO6FEopvlCgE842Lo3ZUHph0pTYlCf49I2NPKDI
	xvwlJcc12qa0kgu5wVqpmhWwumWdMTQzD/mho2eMysG1qsBT+RJyddvO3aWTaioPfilR6T66Qtq5p
	YPGW7xL2F4py+69XsZMt1MFazt8m0cFc5U1nQ4Lab2h5c2JGEnIKI0W8PfWgublVHRHO+XWuXZz16
	5uDmQcVk/sBClyJBAufI63EzaDzG+ijleoYfigvIpMfn4m0IQ1i+OMOIUISoJNyNrGtU/sJYisJUw
	k7jQM+JlAC/Y22mBIUWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iREE0-0006HX-Pd; Sun, 03 Nov 2019 11:39:16 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iREDu-0006HB-Gi
 for openwrt-devel@lists.openwrt.org; Sun, 03 Nov 2019 11:39:12 +0000
Received: by mail-lj1-x244.google.com with SMTP id n5so3558859ljc.9
 for <openwrt-devel@lists.openwrt.org>; Sun, 03 Nov 2019 03:39:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=nUCfjWuBNqFR6yG6ooPXHpN0nNm9iDqV+Psk6BvEJFg=;
 b=EsV03EDuzzvwuwBjhcQDv5qsDDdimk1CzQ3C/JZaBx/e0V/PqYJKDPy/9QKK0jyefO
 bjByeRP70xirf3CllSCPRfFjR8y8M+xd7QJga2I2TVNe6tgnawZLTXYA/ZePhR8LXB60
 EqIkEQHNtSJ0hu/TrcTJ0ipmMccJGuDVVULjUHTzizzPWL35fecRJbzb9PwXlFkldw8u
 WxiI83aeonaM8YfcgtNGq0LkAmKIaj/AfCKJ8Baw5RYtdxu5zKQo/Z8y47ow5AHPTPH3
 uVn062jg69Q2YFhkszWLLnZF2Mmehh4A/+3bXGyv+vF1jvWV3otv8Tj4pPcEE2s1pkqZ
 q3/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=nUCfjWuBNqFR6yG6ooPXHpN0nNm9iDqV+Psk6BvEJFg=;
 b=THY19ZhSRBlYJDKxj5530m7yvygWpkS4V7e7bmtBvOkbJ6UHjst9UypJ3yNBTZA9k1
 JE+pOPxOcg38/VSidY9Whbf0ciDBLrXxksqw75+mCdhWx/8QJfZX1coaMXfCaKsDevZl
 9heELUIaUhhfSpnobKLMMpBwMU08OC6rOXhWGOxfEKl6/N/Ox3LdxB54geNnfuG3C/tg
 FqQJCOlp5DHr9PONb+o2G5rQAg97UxJbr/j9k5FFaj2DVeyNTnz4X53kxgcf7TTprK/l
 tLebHUbbZ9GJw4PrBAUDdcFgNzmnyX3Dp6vrAsiOYjHrd2DRfKn376rve8FGybDzNoW0
 Si1g==
X-Gm-Message-State: APjAAAWksZJp6PoZYeacOVSi3RdfN61Enao79bCWejvNrrPqUR6Wj+qn
 O88lK6P06qYHiGr9yK65uOnUNVHP
X-Google-Smtp-Source: APXvYqyhX70L8KWZjXuyVwESpsRTKqCD5HXZXl3zQ6X+wuT1dG0ThMZDTNF2QjJVoDKaDm7oLAl2OQ==
X-Received: by 2002:a2e:b0f3:: with SMTP id h19mr8150788ljl.153.1572781148267; 
 Sun, 03 Nov 2019 03:39:08 -0800 (PST)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id 4sm5270123ljv.87.2019.11.03.03.39.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 03 Nov 2019 03:39:07 -0800 (PST)
Received: from home.paul.comp (localhost [127.0.0.1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 xA3Bd5Oa009845; Sun, 3 Nov 2019 14:39:05 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id xA3Bd5Jo009844;
 Sun, 3 Nov 2019 14:39:05 +0300
Date: Sun, 3 Nov 2019 14:39:05 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20191103113905.GL1190@home.paul.comp>
References: <20191103113247.9782-1-fercerpav@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191103113247.9782-1-fercerpav@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_033910_581182_B6206D26 
X-CRM114-Status: UNSURE (   7.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fercerpav[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add D-Link DIR-615 rev. E4
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
Cc: Adrian Schmutzler <mail@adrianschmutzler.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello dear reviewers,

On Sun, Nov 03, 2019 at 02:32:47PM +0300, Paul Fertser wrote:
> +			mac: partition@3b0000 {
> +				reg = <0x3b0000 0x10000>;
> +				label = "mac";
> +				read-only;
> +			};
> +
> +			lp: partition@3c0000 {
> +				reg = <0x3c0000 0x30000>;
> +				label = "lp";
> +				read-only;
> +			};

These two I'm not sure about. They do not seem to contain anything
useful but I haven't checked running vendor firmware. They waste 256
KiB of precious flash space.

> +	ath9k: wifi@0,0 {
> +		compatible = "pci168c,002b";

This is a weird node. It doesn't match (actual PID is 0x002e) and yet
the driver loads and works. Probably it shouldn't be used at all?

> +	dlink,dir-615-e4)
> +		caldata_extract "art" 0x1000 0x1000
> +		ath9k_patch_mac_crc $(mtd_get_mac_ascii "nvram" "lan_mac") 0x10c

lan mac seems to be used for wlan as is (without +1/-1) by ar71xx
code.

-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav@gmail.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
