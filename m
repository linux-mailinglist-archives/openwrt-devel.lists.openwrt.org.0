Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B8CB1468A5
	for <lists+openwrt-devel@lfdr.de>; Thu, 23 Jan 2020 14:04:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Wo6XAz7iGUvs60kCS6+txih3MKBw700Z2iGAUlSK7gM=; b=HdGVrF9mgk4d/CubrDH6ChDnc
	VClE8+TAZFxr4ZtQIipwhhAj1R5V/184Rwjk9P/ypjuQCNpkuQP+sU4ou19H1frNq3W6pDGzs3eim
	+HN09frDzR8b6EnPwfe4n8FLCaWre4+MpVAwTeq3MWABFxXJx1Lv7ouphYZ+ZkmmGYdg38rWo1Du1
	2nqt4/mQhS2KAa9olIwVTKaky+9xcGE9yUsMNr/14Af3duTrAn9CbFWnOGAyTYSFOSQ41eARP2HOL
	I0+tDmgxFsf3hO07xs9MrYT9tj/gc/RxUAusTo4EAYCJ05BZHxsgCbKPJ2SmoyW/y9YryQUUOnOMB
	fqbB4kepA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuc9o-00078W-3m; Thu, 23 Jan 2020 13:04:24 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuc9d-000780-6x
 for openwrt-devel@lists.openwrt.org; Thu, 23 Jan 2020 13:04:14 +0000
Received: from [2a04:4540:1402:4900:e8ad:9c82:5215:49a9]
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1iuc9Z-0005iR-TR; Thu, 23 Jan 2020 14:04:10 +0100
To: ondrej.votava@cvut.cz, ynezz@true.cz
References: <20200120230504.GH69327@meh.true.cz>
 <89b60b46ca8a9ab015ffd22c4954d19bc9b3bba0.1579783992.git.ondrej.votava@cvut.cz>
From: John Crispin <john@phrozen.org>
Message-ID: <5fbcc68a-6234-2d3c-c4fb-03a2cc8cc2dd@phrozen.org>
Date: Thu, 23 Jan 2020 14:04:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <89b60b46ca8a9ab015ffd22c4954d19bc9b3bba0.1579783992.git.ondrej.votava@cvut.cz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_050413_411158_9A062FD6 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] procd: show process's exit code
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 23/01/2020 13:58, ondrej.votava@cvut.cz wrote:
> +static int
> +instance_exit_code(int ret){
> +	if(WIFEXITED(ret))
> +	{
> +		return WEXITSTATUS(ret);
> +	}
> +	else if (WIFSIGNALED(ret))
> +	{
> +		return 128 + WTERMSIG(ret);
> +	}
> +	return 1;
> +}
> +

please make the orthographic syntax consistent with the rest of the code.
	John

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
