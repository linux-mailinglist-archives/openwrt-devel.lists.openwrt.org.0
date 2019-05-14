Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BF401CADF
	for <lists+openwrt-devel@lfdr.de>; Tue, 14 May 2019 16:49:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NoEs0OJv2Z4BJYxk2F2ksiCASwL0NdZgz2mQfTbjy9A=; b=i2aS6x0D2IUcOa2bcnJuLtAn9I
	SHphNLr0w8BcV78jkt/u/dVXKPAifGZnejLdyCjBSAbGFWJPoRXePdPe1fhLbXomO4xM5Yl9MN9nq
	lV4/wRB8JHPUpx2BL6gtAd3r0w/8FOacVEyCUWK6pwbxru0ICAzny1R8/sRF+QeBhVdNURlaBFWpD
	zYXjgu1FQ9a7drK1yNLIlH+6V3D0CkLJpl7KkOCaen2TpP6MWGU6qV2njpfykc8T2R2SCrDpTG1oW
	T3vVoprwjr8ffJmD1NcBA2qHTxBLh/pjba2fEUq+uF80sPuCbCC6wPzQ1pjyUE+1EZIEcpajyZMNz
	sVPuvB3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQYkU-0004X6-5U; Tue, 14 May 2019 14:49:46 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQYkN-0004Wh-MM
 for openwrt-devel@lists.openwrt.org; Tue, 14 May 2019 14:49:41 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 21539461A;
 Tue, 14 May 2019 16:49:37 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 99bf169a;
 Tue, 14 May 2019 16:49:35 +0200 (CEST)
Date: Tue, 14 May 2019 16:49:35 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Tautvydas Belgeras <tautvydas.b@8devices.com>
Message-ID: <20190514144935.GB93050@meh.true.cz>
References: <CABwg9-nEmz5Y8N89EU6V4TX0G0SNOYU+TqTCU7KiSr17crqjfQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABwg9-nEmz5Y8N89EU6V4TX0G0SNOYU+TqTCU7KiSr17crqjfQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_074939_882632_74890D21 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] Patch to uqmi utility
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Tautvydas Belgeras <tautvydas.b@8devices.com> [2019-05-14 16:20:05]:

Hi,

> Patch fixes utility returning "Unknown error" when generating a request
> after a wait of a few minutes

quoting from https://openwrt.org/submitting-patches

 * commit subject
   - must have a prefix that depends from what you are doing in the commit
   - must describe what the commit changes and why the commit is necessary.
     (e.g. [PATCH uqmi] uqmi: fix response message handling)

 * 6. No MIME, no links, no compression, no attachments, just plain text
 * 13. The canonical patch format (subject part)

> diff --git a/dev.c b/dev.c
> index c25900b..b0c8262 100644
> --- a/dev.c
> +++ b/dev.c
> @@ -101,6 +101,14 @@ static void qmi_process_msg(struct qmi_dev *qmi, struct qmi_msg *msg)
>  	uint16_t tid;
>
>  	if (msg->qmux.service == QMI_SERVICE_CTL)
> +	{
> +		if (msg->flags != QMI_CTL_FLAG_RESPONSE)
> +			return;
> +	}
> +	else if (msg->flags != QMI_SERVICE_FLAG_RESPONSE)
> +		return;
> +
> +	if (msg->qmux.service == QMI_SERVICE_CTL)
>  		tid = msg->ctl.transaction;
>  	else
>  		tid = le16_to_cpu(msg->svc.transaction);

please try to follow already estabilished coding style in that file, something
like:

 if (something) {
 } else if (other) {
 }

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
