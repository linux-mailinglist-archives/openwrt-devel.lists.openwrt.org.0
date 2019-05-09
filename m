Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E4DC1870C
	for <lists+openwrt-devel@lfdr.de>; Thu,  9 May 2019 10:50:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ssb6j8i0XG8CnxMiM7pXwYBX22jAYj/lXhsJPpczh98=; b=DIpZNasc/YvkQ+
	IMmLleo50Hd37skAmJWdN5eAFufJTKZwWORP+bLLiQEO8HjlDKD6G8PQZeuFppm7qQ38W4H1eBhml
	WSP0xCy/1WlR8Ud5iiW1pjPx6K46prtw8l8n9CO6814ximaN8S1jtSJKlvYDQ9lmHHnr7WMJk2EMM
	6XyBX0/RZ/oL31BToYKrR+QPttFvDF7IE18edxKmjj5VD09V6Xsti5diavjpaa8uKMXG0HvgYiBdh
	daNrlzqCsyWdC3RpL3kw6nn6XdHzjA3LKdFBGuID6o7HGY1jXfOpPPbcSnqJH6laRYnBaWZ6PCA+O
	qzXbf9hzxE+HQjKIRVZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOekx-0005IY-Cl; Thu, 09 May 2019 08:50:23 +0000
Received: from mail-qk1-x72c.google.com ([2607:f8b0:4864:20::72c])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOekl-0005Hy-7E
 for openwrt-devel@lists.openwrt.org; Thu, 09 May 2019 08:50:12 +0000
Received: by mail-qk1-x72c.google.com with SMTP id z6so119216qkl.10
 for <openwrt-devel@lists.openwrt.org>; Thu, 09 May 2019 01:50:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=n+6thkuH3IUSkwMpPlwetosN2eszBr61SjhXf/03CJg=;
 b=lYYIpCK+/WRTi1sFl516u8EBflUix/ydL/yQXUGJvKmq+ykLkMRVIGFwCUqJ1k9zIm
 zHTJixyn5ALatzLCesMZFaPXCKOPdn0skIjBI8O7njJi2dh1kFujpPTUU2Ia6baNtvLJ
 Q/C6Y5CyW7E7OKHNZkdFgaeHjFxneWY2WHOojvrAzQfXL5KaDFJBskIjIEZ9tVmTJnn0
 +7KHcjUmaN1soMenoT8lgYgEzVDsxzOMBam2mCoWqzTpvDHA0BgbzX32PZf/8T0aYbrR
 mhiTFUdVeZn2q6/yXOVbbHWmBsjq+t2JqWXusJRQhbLUtCa2yUBWX+t7s3r51vf0mU2g
 MZ1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=n+6thkuH3IUSkwMpPlwetosN2eszBr61SjhXf/03CJg=;
 b=K5oW2GbQNoAZo/rt4F3fUKIgiWI2LWNn5PPGH2dkQ/GVYKm5xghpp6mqvxK9lx+QnP
 KZIhGhzTkJFGvgWNbvxnuXTnNzms+jU8uWPWYOA7UHRsc5Om/4oWKtCT3FQ6a3XxJJnm
 bQn10AhNjytp3o7PaGGeabZ/e/UxzySI5DJSseLwQZVAcM+xeiLl2uTfVVNZDb3y/DpZ
 rPXfYc5XhCokQWkVsdd6YxEpIp68pMa+OtBrd485nlEISLndMoc8v8vkTdlD9L6oXqzV
 bH0ViRIeQCkIMqSmDSM1KDSmOKAbJtq5YfKvLf9kt3j42b2zWN2bBJ6NRUPK0CX2Kjrz
 ayOA==
X-Gm-Message-State: APjAAAVNa8bM4tiGD47RtesZvOEgmOqWpqhJ8d9QNaEd5RW2SIpD2ezB
 jdq7hkkdaZ75sdASbMgWZJk+YoP6fJGEPmQGVRE=
X-Google-Smtp-Source: APXvYqxyQleKE6HZRluhvS9SiRu96y/T3FrHm8unflKnBCOYXX8TGZuTecVDU5DN7418WiNJuiTRrv1blBdhr2IVvbI=
X-Received: by 2002:a37:aa42:: with SMTP id t63mr2132554qke.353.1557391809306; 
 Thu, 09 May 2019 01:50:09 -0700 (PDT)
MIME-Version: 1.0
References: <4dfc32e2-d65b-5a93-f04e-91d80d94bf50@allycomm.com>
In-Reply-To: <4dfc32e2-d65b-5a93-f04e-91d80d94bf50@allycomm.com>
From: Robert Marko <robimarko@gmail.com>
Date: Thu, 9 May 2019 10:49:57 +0200
Message-ID: <CAOX2RU4Ae_GRq+_P1RGt0=BgnodSfoT_uHkjZxTwsf5mPobLgg@mail.gmail.com>
To: Jeff Kletsky <lede@allycomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_015011_367192_33FF9EF7 
X-CRM114-Status: UNSURE (   6.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:72c listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robimarko[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] Build system puzzles: PCI_SUPPORT not being set
 for subtarget
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

> I don't see any differences between the generic and nand subtargets'
> `config-default`, `target.mk`, or `image/*.mk` that seem related to
> PCI_SUPPORT.

Well, generic target has PCI symbols enabled in config-default
https://github.com/openwrt/openwrt/blob/master/target/linux/ath79/generic/config-default#L14

So you gotta enable those in nand too.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
