Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFFC6168A1C
	for <lists+openwrt-devel@lfdr.de>; Fri, 21 Feb 2020 23:56:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Swt3iR5CFn3wK9H3u4uQ6OI/VEYx23/hsjZMWV9dmLY=; b=nub8c5wFTWYa9B
	btlmOejxiuoAnM7lnbrtw8d0ArUqJTlwAysV6PSqfCnJWJeX3H7YO5uLG8KXj7jSKqJuyeitxD/tp
	tUS9L4yaAr7oM1JerC5g1m0y0ElE4J+to2YNDRLhXY1+Gsl7ZQ3WOTc1KdwFA0pLydp7U/wwcPGbS
	gIRdMH+32o3V1KRpchbjg0SZBnP9riBLkks7nGAJLTS6d8UG6B6jAQnxDODWawQ2ctKRSXhBuymhI
	dJ+26cusJzmGq0mKnFA/FjstH2Fme7nvVVkBX5b79l5jZkji3yz94W8jr3NtLEwckFDObwr7D49aw
	5kUjxIp8Hhe3NBsErUHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5HDe-0001pg-NF; Fri, 21 Feb 2020 22:56:26 +0000
Received: from mail-ot1-x333.google.com ([2607:f8b0:4864:20::333])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5HDT-0001o3-57; Fri, 21 Feb 2020 22:56:16 +0000
Received: by mail-ot1-x333.google.com with SMTP id 77so3538493oty.6;
 Fri, 21 Feb 2020 14:56:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ngXV5xrV+7qYvpmdCUE6VbBX/G+7yO9YYOb3XT/O7lQ=;
 b=IyrRP0T2iZJNmXp/gFJt8e/Fe45RpCl1E4a2hp143Qg8g7rdrHugdIT7ZRBMpAUCPn
 hPCKu7WVgOmWEfhuRQzmFvwJJ0SBdG9mOua+HLHzugfDFBXn/XGIj2mnWwaHxBjipX+G
 i2CMSibmDGEkmmcfmKLtBxNaOt2f60sYVhVHwhFcyCCSUI26zOoMhUO88IqXb9YGJjgp
 5b+Azr79fvclxAyutWftsVDC2sbZjWRwNLwVbheXPHB03b9Q0dGnwGmqMjrGeggeZaDy
 /W/Hl8GWURtBF/9F29p/doiH6ZmNVUgNmr9+WFOnFheqkKfQqSk2iCNYoZuHbxL7HzdL
 1ALA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ngXV5xrV+7qYvpmdCUE6VbBX/G+7yO9YYOb3XT/O7lQ=;
 b=NlzV7qb4dPaVwlfmy3iCBt+FIAPFfqih4xXecyOwiBlNVGDZnEccuKga4VHEJSij2e
 Lh7QyxtCNHXMLYa3x1IJUaB9k+NcnWg7jAFi7k6DG/qE8B/rCfqBZpUN7Fh6nMd5S+M5
 uD0zVFS0m8xpxOEtI6ASnxK4+sKM8+e0zwSTRe3kNzgm5Y5QT4Uhp5nZ/Yf9GCIXxrBT
 w3R4gJXTl2L53qqNm3wPTb3ICFVESkXe2VDKzOuWDY0Du6RLTcoLVlQs+NI4n+NnLKDp
 Q4IjuNXDqb927JDnUQTAmLlv8G4umvCbwXWrrlsOTGYqXWMATjry5ddIABNSub9n915J
 v/fg==
X-Gm-Message-State: APjAAAVh4LJFbM3dzuDc/xPN/aUFzowJ5yvshkBc6vXY7Op+CQx3JK8R
 90ipS1RO0TpjJDJ5UwvTosBsMd4eO4Be1ksePvaJjgUurnQ=
X-Google-Smtp-Source: APXvYqxBHfoI+Hz/cRhSnzvvHjDFRnUW2OnDcjGHxo9g+jC5q7S6TBJPWmOWpvMNhWQpXJJbLMTreT59EjbvCbZWXKg=
X-Received: by 2002:a9d:7f11:: with SMTP id j17mr32328792otq.281.1582325766184; 
 Fri, 21 Feb 2020 14:56:06 -0800 (PST)
MIME-Version: 1.0
References: <56105ce3-f528-c9da-d8dd-370c80829e53@mein.io>
In-Reply-To: <56105ce3-f528-c9da-d8dd-370c80829e53@mein.io>
From: Rosen Penev <rosenp@gmail.com>
Date: Fri, 21 Feb 2020 14:55:55 -0800
Message-ID: <CAKxU2N8Z+gbkav1_5ZNG3brXwZGNqkGtObx9MY-m_o+kh0crhw@mail.gmail.com>
To: Jo-Philipp Wich <jo@mein.io>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_145615_220553_F56DAD2B 
X-CRM114-Status: GOOD (  10.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:333 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] Next maintenance releases
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 OpenWrt Project Administration <openwrt-adm@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Fri, Feb 21, 2020 at 2:08 AM Jo-Philipp Wich <jo@mein.io> wrote:
>
> Hi,
>
> I'd like to release 19.07.2 and 18.06.8 sometime between Sun 23rd and
> Tue 25th. If you have pending important fixes you like to see backported
> to the respective branches please do so ASAP or mention the commits in a
> reply to this mail.
I would like https://patchwork.ozlabs.org/patch/1221697/ to be applied.

I've already worked around this not being merged for ffmpeg, but I
still would like to see it in.

It makes no sense to have broken functionality in the tree.

The proper fix is https://patchwork.ozlabs.org/patch/1221696/ , but I
don't think a change like that is applicable for 19.07.
>
>
> Regards,
> Jo
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
