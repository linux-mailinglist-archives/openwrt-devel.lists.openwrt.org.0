Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7272711AE7D
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Dec 2019 15:56:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Cc:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VlCanKx+zHWzPkEtrAyjHISo6uu9hgoAB8PDEHPkW78=; b=haK05//l4hYhTg
	0DujwcqMo2MI1MqLFVf25vueWTOix1zCMcmN93SE1t2lp8Px/Le48SG79sfnakUUhs410kHSlciJV
	Raq/Nm3bZr1nhQ7lKTaM92ol/Sot2OhjS2rH5HLPdPBA6nm3LBO1CdamVfmGMxTJeL4Tpdo4qlLCI
	4+dID+OJEWiSCJ8LzJlyokVdCVJx4tMte2H3WAUIynABWoOLVVf8S/J98gdrPnUewX8NyRy5V2i2k
	ivUtRLjjWZUrV6mLRC/hLnacZlr/38ZsEza6vvF1ztRlR5AKyfTh6MdzeY57K35knsvBTaDxOi3t5
	8UKMFpXF7dfhhFJupnKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if3PZ-0002pP-PI; Wed, 11 Dec 2019 14:56:21 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if3OK-0000kE-AX
 for openwrt-devel@lists.openwrt.org; Wed, 11 Dec 2019 14:55:06 +0000
Received: by mail-lj1-x243.google.com with SMTP id 21so24452448ljr.0
 for <openwrt-devel@lists.openwrt.org>; Wed, 11 Dec 2019 06:55:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=eUSjLNn+TFs1R1Nn6Ci4Jf+/T+7NXPinyORecPPBRT8=;
 b=N3jqAgfERRy4PJnyJ2oYiLcsTbqHZUPie39PB5UI2X8ylbV3tbNxavceafGYiDEuxY
 CrlsKGUpfsePZM92rvd1tK7CwIe4SEYDqQUSLdJo4Bp4jHWjZKWvFvLXGLQ9HmCvoZR4
 W7Y6otlzN68LnRy9kb2hS5dQJmj/3kJGHuOPgbfMcDMfg79ry4s4WaQI3DfQA1Urr3OM
 1CtQ+5zwsi3SopMYzsIir14+/teGd38DYumJHWFgRmjHhZKUet5gNIzF4s8xujEYTuzd
 rHcPu4E5s7mfBNedhWLBT11PfFuM7QNKC6u09Ta5XOVB9qm37AIGNNoBGU4X99A7ssOI
 eJjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=eUSjLNn+TFs1R1Nn6Ci4Jf+/T+7NXPinyORecPPBRT8=;
 b=Q6ZRS8ccwfySnb95uglMivegnxavs9s2pA8rkdTC0E8S1f4h4Dw1aN9D0nwA97QDd3
 tykhNI9e9Q8cTbCpM6mgk9G6I+Q5HGk7LxsxnNpT7nyzBqwTzbHrf90p2XBUsv0XMv4/
 701rQ0hAXX/EnIQa6wvTg/JzIV4OrjF6m2A1sY1efwOuDpQDHXpYFixzap9Qkt2hCwl7
 LS2WVpeX7Ra0YGgpn5GWgfu0Q5m8V9WgZfSzGJhTBmoasLRa3OgMdnnSwvMMGIzMES/p
 lfFK5uoCfasGiziaX2JWo5R6D7WcM9HbLPOteJGtBpEG69Uy0b48gZ9Gm69NYxpoAXr+
 yDog==
X-Gm-Message-State: APjAAAXRDZ2a/rfIRBsw8nFNHuHqYlmk1uXtFLVsFlFa9DXBbqUuUWIp
 5eVopzZ4ItzqR4gUz3m9TKvOu76i
X-Google-Smtp-Source: APXvYqwaK/PvuiN/GPQxyTsWoeVJs1/5Brjd4hessmP15sJP7VFeQB11GvBFgvN1a5AoLQUM5HLGpg==
X-Received: by 2002:a2e:6f19:: with SMTP id k25mr2336820ljc.84.1576076101321; 
 Wed, 11 Dec 2019 06:55:01 -0800 (PST)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id v14sm1313349ljv.105.2019.12.11.06.55.00
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 06:55:00 -0800 (PST)
Received: from home.paul.comp (localhost [127.0.0.1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 xBBEswq2013384
 for <openwrt-devel@lists.openwrt.org>; Wed, 11 Dec 2019 17:54:58 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id xBBEswdx013383
 for openwrt-devel@lists.openwrt.org; Wed, 11 Dec 2019 17:54:58 +0300
Date: Wed, 11 Dec 2019 17:54:58 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20191211145458.GN11070@home.paul.comp>
References: <4c10fab6-2a90-ea0b-8176-314638e1cb06@hauke-m.de>
 <20191211144459.13235-1-fercerpav@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191211144459.13235-1-fercerpav@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_065504_416300_B42B8AD7 
X-CRM114-Status: UNSURE (   6.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fercerpav[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] kernel: ath10k-ct: provide a build
 variant for small RAM devices
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

On Wed, Dec 11, 2019 at 05:44:59PM +0300, Paul Fertser wrote:
> +define Build/Patch
> +	$(if $(QUILT),rm -rf $(PKG_BUILD_DIR)/patches; mkdir -p $(PKG_BUILD_DIR)/patches)
> +	$(call PatchDir,$(PKG_BUILD_DIR),$(PATCH_DIR),)
> +ifeq ($(BUILD_VARIANT),smallbuffers)
> +	$(call PatchDir,$(PKG_BUILD_DIR),$(PATCH_DIR)-smallbuffers,patches-smallbuffers)
> +endif
> +	$(if $(QUILT),touch $(PKG_BUILD_DIR)/.quilt_used)
> +endef

This is not correctly creating the patches-smallbuffers directory,
I'll fix it for v2 along with other review points (if this approach is
considered worthy at all).

-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav@gmail.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
