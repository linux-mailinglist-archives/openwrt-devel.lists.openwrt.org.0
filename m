Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 457DD1468E4
	for <lists+openwrt-devel@lfdr.de>; Thu, 23 Jan 2020 14:17:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=K+Ek3ocvu2IAHgHI3gmw50QtHiqiOR9ex8kACVeW+kc=; b=Xcg/CpYiQyPAVlcUOUkob56It
	6B5ioquLZJxwZDdgyrVU5BZ4N7/S9TCQ6+nt/IZEsesLC5AKyxlzVMJg6o7KquwasZ8OzrFkoJ20g
	8NL/KXKrio2mYwDdc2iLEntnFwPhsu9SwJF3zjFYiELz7kgxi0NKB32MMsKz7JUPz3RNcAlLM5pmV
	HRgSt4NEdfADSTliwYt6IOmUR2abcHQxI4KCmxplWN77gto37u8JkchpK91lONOsL7jfuROphFhV8
	HX3OOjLLVb5WqzI15AysnXgkeMAj5XsplKVUgGV8eprUz2jXzyhiDWKvOS67HTOy3jojG2Q6qlA44
	kUOsKTynw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iucMS-0004Kf-7F; Thu, 23 Jan 2020 13:17:28 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iucMJ-0004KA-Q4
 for openwrt-devel@lists.openwrt.org; Thu, 23 Jan 2020 13:17:21 +0000
Received: from [2a04:4540:1402:4900:e8ad:9c82:5215:49a9]
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1iucMI-0006mh-6i; Thu, 23 Jan 2020 14:17:18 +0100
To: ondrej.votava@cvut.cz, openwrt-devel@lists.openwrt.org
References: <20200120095305.18132-1-ondrej.votava@cvut.cz>
 <20200123131527.23003-1-ondrej.votava@cvut.cz>
From: John Crispin <john@phrozen.org>
Message-ID: <a0393fed-9132-0ed2-8840-ab309f05c1c3@phrozen.org>
Date: Thu, 23 Jan 2020 14:17:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20200123131527.23003-1-ondrej.votava@cvut.cz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_051720_004367_1C975750 
X-CRM114-Status: GOOD (  10.31  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 23/01/2020 14:15, ondrej.votava@cvut.cz wrote:
>   
> +static int
> +instance_exit_code(int ret)
> +{
> +	if(WIFEXITED(ret)) {
           ^ missing space
> +		return WEXITSTATUS(ret);
> +	}
         no new line here
> +	else if (WIFSIGNALED(ret)) {
> +		return 128 + WTERMSIG(ret);
         is there a define for 128 ?
> +	}
> +	return 1;
> +}
> +

	John

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
