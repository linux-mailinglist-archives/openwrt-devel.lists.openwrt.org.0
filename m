Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (unknown [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 841C7141792
	for <lists+openwrt-devel@lfdr.de>; Sat, 18 Jan 2020 14:02:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=x9b2HHPhpynry2MmkbKcEcrMRISrLZyu6qaDP676Qlc=; b=k/sTgIL/BAKyfYM+cESTsUV8Ls
	VqpYqm2kuqCNS5Ag0RDwMLsRMhviPChHn8McitXnZ1dlRYf1ZS1WAQvfG1OcWXLeq+lGIFp+YV24Q
	VVz1HRNi2tM/a3Y5ibK60I4hSq9IqkuIPMuIRk/nxkBqRrJ8lgIZ7xx17Dakiy2DFJP28ZaAzBD8a
	qVtTs7gmjjAgv8PmETkQK0avgaR0ND5ftZ5A7igLBxvbiBIdqDvs4OJjHnLqHG3D3sEVJ17MF6w43
	P226LgDDgzvRH+CbFqe8w4mJKPCkh/KAci5BHSxcZq4p+gwDndObqElldwi6CfYjI+ARd6a8MN0oX
	A1dGiMYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isnjU-000219-SI; Sat, 18 Jan 2020 13:01:44 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isnjN-00020f-V6
 for openwrt-devel@lists.openwrt.org; Sat, 18 Jan 2020 13:01:39 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id BADE95786;
 Sat, 18 Jan 2020 14:01:34 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id b156667b;
 Sat, 18 Jan 2020 14:01:24 +0100 (CET)
Date: Sat, 18 Jan 2020 14:01:23 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Rui Salvaterra <rsalvaterra@gmail.com>
Message-ID: <20200118130123.GD84286@meh.true.cz>
References: <20200116211643.24117-1-rsalvaterra@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200116211643.24117-1-rsalvaterra@gmail.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200118_050138_151871_0C9ACBCF 
X-CRM114-Status: UNSURE (   5.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH] fw3: robustify flow table detection.
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Rui Salvaterra <rsalvaterra@gmail.com> [2020-01-16 21:16:43]:

Hi,

> +fw3_has_target(const char *target)
> +{
> +	FILE *f;
> +
> +	char line[12];
> +	bool seen = false;
> +
> +	const char *path = "/proc/net/ip_tables_targets";
> +
> +	if (!(f = fopen(path, "r")))
> +		return false;
> +
> +	while (fgets(line, sizeof(line), f))
> +	{
> +		if (!strncmp(line, target, strlen(target)))

This doesn't seem right to me in case target > 12,
MIN(sizeof(line), strlen(target)) perhaps?

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
