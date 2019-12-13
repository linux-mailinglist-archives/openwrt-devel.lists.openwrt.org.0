Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E326011EE3E
	for <lists+openwrt-devel@lfdr.de>; Sat, 14 Dec 2019 00:10:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=veWwqxOzs5A5eBvyPQOceNsnAHrUC8WOFMOIaa4Us3g=; b=BVzLXBP+C2767/
	ZQVITR4Cw/g8Q4QmUitgAtrFv7BWDjr6UzSqmk7T0kNRx/yDvZVgjFIExunh6cnUKekJx2dU5bExy
	tRqG++zfXCoinM2KConB75pzhTS3HyBoGtemHJw+YBdgNuA3rR0Ja078AoZbbiztsc9gf3SZ65UG5
	/sOFHKip18YjCohglvpf4wRpyFhlwHCKdOY7M1TMfn/HX5VTCcTryRez944xjBN+R7kDOGz4ARIDG
	Qt0pHNrYl0AIbcXWv+XyJYY38oLlRw9aSJnbP7oixmYSviXK2FkscgGuDHgSswVAForGqzecmKGsi
	ndcC4tmH9GazE5qPFvpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifu55-0005aG-5v; Fri, 13 Dec 2019 23:10:43 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifu4x-0005Yz-Io
 for openwrt-devel@lists.openwrt.org; Fri, 13 Dec 2019 23:10:37 +0000
Received: by mail-lj1-x234.google.com with SMTP id u17so443453lja.4
 for <openwrt-devel@lists.openwrt.org>; Fri, 13 Dec 2019 15:10:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=FLMalqbuIjjerfQLkl7/Qcnz0zyymD8yk0F6/4t98OE=;
 b=SBXd7iT4R1n+cfKXsYSavQzencDLAEHtU1Db/UmPrFPr4kgJpK+lGdHfjA58OyVmXW
 oAYS/5cYU9WtyD6JpyRJACH8wTle6OC432n1Zk6jUU5s2hPvhb+oaLQARY6NYIgxexgP
 7gIR8APm2kVTYaAmkaVzTZ2qmaXn+WnvR5Bvll2zaAr0sp55UODM87zvx+fdrvkGsBwm
 5XKcLCWDZyLclBnHTCb5ZeIKV4ADQc5vvNTTZsQJTpuHXiUk3QtC7cL751cwPerv79SV
 ZsKD8kK4XkX3ZTppbibcWDSV4/6P+KICr/ucnL2weaLM8JPmmYZBg+RxwCwgE7c6nvXq
 NgAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=FLMalqbuIjjerfQLkl7/Qcnz0zyymD8yk0F6/4t98OE=;
 b=rLPoUZzzAC0S+LtRbKvmSziJEt2SVS3efxCeR1iHFQavpSY9yHh1B+d/ayFaHcAn8/
 IB27MTA0H/jAjtk8SD+z+hsnAhx+zr0g/w8hw8IX6EUaMZTilGocf2Iqw3iui2yZDjRV
 l/KG17Im075/IBQbwjkhLXx5IF95jorUQKl9zAqRpuBW9cGIjK52wFDkFRDMSMoGhpmm
 qo8wtwe/w8wCh7AFcPCXX6tIsoI/FvQPINcN1eBgyYWhSgMKPrhOOAyXxNRfuNKdQ3BM
 HJbrIDm7GKGGZq4YRJquoP6X43f5U++3A4yXuBOiXwCCmF5rmFp/i4TDkkw7UdY0OkYd
 dg+w==
X-Gm-Message-State: APjAAAUNlT4IS4hJ/mZLT83KHlGFCgvHLnsyjjoCAGSCgfeL9Vnll9nH
 TgcwdjGsJXTTEujx1xkvSBU=
X-Google-Smtp-Source: APXvYqx+Oia74FOSv7b0ybftB3ZvTb1AqBTzdqgQgbzsy+7Ui8QJDu+eMlHVTDmyvyUQKw5Xqn33vg==
X-Received: by 2002:a2e:97cf:: with SMTP id m15mr11412067ljj.130.1576278632769; 
 Fri, 13 Dec 2019 15:10:32 -0800 (PST)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id 192sm5216902lfh.28.2019.12.13.15.10.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 15:10:31 -0800 (PST)
Received: from home.paul.comp (localhost [127.0.0.1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 xBDNATHl016844; Sat, 14 Dec 2019 02:10:30 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id xBDNATYI016843;
 Sat, 14 Dec 2019 02:10:29 +0300
Date: Sat, 14 Dec 2019 02:10:28 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: Sven Roederer <devel-sven@geroedel.de>
Message-ID: <20191213231028.GY11070@home.paul.comp>
References: <20191213195046.13358-1-devel-sven@geroedel.de>
 <20191213200723.GX11070@home.paul.comp> <2070834.sci2Q4oWNF@strike>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2070834.sci2Q4oWNF@strike>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_151035_650940_946A2B31 
X-CRM114-Status: UNSURE (   9.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:234 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fercerpav[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH 19.07] ath79: add support for gl-ar750
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
Cc: Luochongjun <luochongjun@gl-inet.com>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hey Sven,

On Fri, Dec 13, 2019 at 11:51:14PM +0100, Sven Roederer wrote:
> good point. But also on master seems to be no entry for this board in 
> "01_leds". So I assume the default case fits  for it.

I looked several times through the config and was unable to see the
default case. Apparently, you count on trigger being set in DTS, and
that's ok for wlan and power, I see. It's just that I checked ar71xx
and it had those entries in uci-defaults but since triggers can be set
from DTS now that's not needed, got it.

Also, if you're going to improve the patch, I've noticed you have no
DTS designations for how the LEDs are to be used (aliases for led-boot
etc) and no label_mac assignment. Not sure if that's important.

-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav@gmail.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
