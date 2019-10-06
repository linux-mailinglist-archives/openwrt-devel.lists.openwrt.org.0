Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F2BBCCF86
	for <lists+openwrt-devel@lfdr.de>; Sun,  6 Oct 2019 10:48:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=h3Qo9H9n++ZbAN597Kxz2X7RWEiqc86Y2hzA4ZiFDdo=; b=ONIvQ/Ubb2ayvg3c0VcfvfFVB
	XjSD3XbCxy5JiXQBzNNl9XBNujxV63T1v/nsT51Pmr5dX3S+eS7MMh+RzCQazyEQW00Z6SQopGAOP
	dbIdhUoe3MX9CdfQPUokmf/8ytNNx+Zdf5vC4emotqIO9sLlbKxjcPdRVKAM/+GQoKX1l+ONa1kMF
	aC9rbvsOnHReMn3c3TPqpr718/7HvHZuMc68//Net/fhPCJ4KAb4tqhKvSG+TsuEM1J32xMjMrFhm
	2CKb5itanPqW4iGe3BuQ8X2QEFegyQK8+ZHX+3UaowlkFiUqvKtsRxK5EGu3gerRgEntT9rvxLTub
	tma5P9r+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH2DO-0004c0-VE; Sun, 06 Oct 2019 08:48:30 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH2DE-0004bX-OH
 for openwrt-devel@lists.openwrt.org; Sun, 06 Oct 2019 08:48:22 +0000
Received: by mail-wr1-x441.google.com with SMTP id h4so2996253wrv.7
 for <openwrt-devel@lists.openwrt.org>; Sun, 06 Oct 2019 01:48:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=Os9KW/urcp/2i5LrOL4TzUY4TpRF6S36b6ZCOVmUhJw=;
 b=umvxDjBPjcrN3f/wkjhSgK/ILKsW0jCL0PMVLCqSAaCh6k/uRNJy/qjQHIVSuaCdr6
 ET1jGTEaoiSP9ESYxKtZjZ4tDQZJyG7BK5JmfnpWzAONxZffyekVq2uhLzvLBJNBTcuc
 sn1y7XF18Is3wGsYx5+PvuyioP10xIcc6dl+RXxbe3lQoawVjeRcB0/106RYtB3w28PF
 2RK5UGtSlFjRwXTDYg4IXO5DzwjZmO/7h3+voXidT1GGKvT4tizrTvWzapBVimLZHRco
 pkIGVDgqxMgnZMXsVUiYbx/rzhNBc2GXjA6PyS+PN9XakTeNE2m/tGJKCaKVN/ijZ4v7
 tMDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Os9KW/urcp/2i5LrOL4TzUY4TpRF6S36b6ZCOVmUhJw=;
 b=bsZAZQjuACmNRfbBAjh0l9mHijE7ihRqTNf8jFBcO+gWewum5mIBvSSPw3ICnHfjTd
 zht0qnStCMNYiRxs21CM7MWJIdEPLf5KlNpspn/7xajXkSxE1LVbZUA3cMlsOU9xqMh2
 rGiF7qAQVUgUKGHaHvScKh5RnYuhDC3ro8eDejqXbF5p2rPeoifBdx5UveM7AGBtQ7/6
 DqnwhYswohv8ZmQfPLwK6WT8lwg5mhZ1gK2Dgq+wmNj9dviF4yppAtRM1fHyfRS4yJfZ
 zUcPNf60goEe6j994lIPZJOHDK1q1e8LdLyFA4HrIHRC1XQKG4vcYas+GpkL71xI++1q
 kPmg==
X-Gm-Message-State: APjAAAXk3C73ccugrFa4OAnEDr22hn04s/I3H9E/RFBw3sufs4UOMkmz
 LeFkpDfEzPuyn/1zU0rHfFONqK1q
X-Google-Smtp-Source: APXvYqzPwcSkw1/D2PekJGxS8aLD5kV6B/tUoWBBwhnekdmWAiAh2HSc11rBtPpe1iTlgdYej/ms6w==
X-Received: by 2002:a5d:540c:: with SMTP id g12mr18045769wrv.207.1570351698186; 
 Sun, 06 Oct 2019 01:48:18 -0700 (PDT)
Received: from mamamia.internal (a89-182-18-120.net-htp.de. [89.182.18.120])
 by smtp.gmail.com with ESMTPSA id f18sm11350305wmh.43.2019.10.06.01.48.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 06 Oct 2019 01:48:17 -0700 (PDT)
To: Paul Spooren <mail@aparcar.org>, openwrt-devel@lists.openwrt.org
References: <20191002071544.8017-1-mail@aparcar.org>
From: Andre Heider <a.heider@gmail.com>
Message-ID: <8f3340e4-cdb9-f25f-e0b9-7d047f70b02c@gmail.com>
Date: Sun, 6 Oct 2019 10:48:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191002071544.8017-1-mail@aparcar.org>
Content-Language: de-DE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_014820_812650_ABB67CFE 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (a.heider[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH v2] toolchain/gcc: switch to version 8
 by default
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 02/10/2019 09:15, Paul Spooren wrote:
> Main motivation for this commit is the introduction of
> `-ffile-prefix-map=` which alows reproducible build path.
> 
> Compiling tested without errors on the following targets:
> 
> * ath79
> * brcm2708
> * brcm63xx
> * ixp4xx
> * ramips
> * sunxi
> * x86
> 
> CC: Andre Heider <a.heider@gmail.com>
> 
> Thanks to Andre for the iremap fixup
> 
> Signed-off-by: Paul Spooren <mail@aparcar.org>

Using this patch I have gcc8 builds running on sunxi and omap for a few 
days now, no issues so far!

Tested-by: Andre Heider <a.heider@gmail.com>

Thanks,
Andre


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
