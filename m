Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 126E113CCA9
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 Jan 2020 19:58:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KRdSSysOaY+SX74G6++QPKGvcrGsIEDpEBFrZaczobU=; b=Aoz6MbPbasA1M6fSaX/4maSRn
	Cpwh700Ds8nj95z7S0Dpm8ukTt/Ju7mxtzM0yslrvplYIc/OIQ7YPEnsS5cFOL07YxECzjnlTTJNE
	IMO2ml9ElDFpV6Io3IsQrdR9KhjUDWhCP8b9yhOBwj77WZBUCP00SWeDYOfJr8MWj4anytGb7felx
	YPGDTMT4+Bd631IAYhRHyAk3r9JyYF0qGnmJj/Rs49AwxVX6Hh817QfGEDpIanpl7RK/6+8vC/xT7
	5PG+ST5V7vf+Cz1CsvtYYi6rbB3IHpLK2kd1411piTEE7K4Rndx05sj+Jb2B4HlR1yeAkhccWNhTc
	SgV0RC6GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irnsS-0003Yd-K9; Wed, 15 Jan 2020 18:58:52 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irnsH-0003Vv-4L
 for openwrt-devel@lists.openwrt.org; Wed, 15 Jan 2020 18:58:42 +0000
Received: from [2a04:4540:1401:8c00:fabe:bb99:c5ae:67a0]
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1irnsF-00069d-ON; Wed, 15 Jan 2020 19:58:39 +0100
To: Jo-Philipp Wich <jo@mein.io>, openwrt-devel@lists.openwrt.org
References: <20200101133411.10451-1-linus.walleij@linaro.org>
 <84124ca2-5168-54ec-f3e8-c89c1a0c6aac@wwsnet.net>
From: John Crispin <john@phrozen.org>
Message-ID: <287e7a29-2b84-9267-5c4d-ab98c4ba15cf@phrozen.org>
Date: Wed, 15 Jan 2020 19:58:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <84124ca2-5168-54ec-f3e8-c89c1a0c6aac@wwsnet.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_105841_327497_4012715E 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] busybox: Include hdparm by default on
 nas type device
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

On 01/01/2020 16:55, Jo-Philipp Wich wrote:
> Hi Linus,
> 
> can you move the condition before the sed program populating the initial
> config? That should restore the ability for users to deselect busybox
> hdparm (e.g. to replace it with something different).
> 
> ~ Jo

folded Jo's comment into the patch
Merged, thanks !

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
