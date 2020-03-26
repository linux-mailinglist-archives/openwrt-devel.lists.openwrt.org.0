Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8FBE193ADA
	for <lists+openwrt-devel@lfdr.de>; Thu, 26 Mar 2020 09:31:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i+52WIwXxUPcSLye9i5MrGVo/73tZHyJwOYMoO461HE=; b=o9XWzkRLoAfDHG
	sEdQ+JE0D0RMUXiRaFPc+Y6ThfQJKy7aVdpHj52rDpdEgWsjErZx+c5+MIRJ2pK4a9icJ8HDPccfC
	ZrGLekykgFUshtiXwNKwuqSIct6oWZz3SWjkE4DzpYPqa43bPnd3viZf4ckZ3BlLFIs5UYH02IP5Q
	mn2a1XvH6+TdVs7kuHEQjvoL74+G5WmmiWZZDPtWkcQAYySeM6Teup0juDDIwdhHUa0yD4Ybm7Eol
	M8ny74h5khqEP3mN5MNQMOrhcWq3BY/pqCRajjYpvpg3YX+6WlZyyD4zRc53H7x7ymkaeG7U+2H7H
	li0s8RwkqkFDtE0/Rk1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHNv4-0007qL-4F; Thu, 26 Mar 2020 08:31:18 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHNuw-0007pv-AE
 for openwrt-devel@lists.openwrt.org; Thu, 26 Mar 2020 08:31:11 +0000
Received: by mail-ot1-x344.google.com with SMTP id a6so4938992otb.10
 for <openwrt-devel@lists.openwrt.org>; Thu, 26 Mar 2020 01:31:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AaXDCkcG+1hhIuOmzxcS1zc8TF7Qi6nLjazouLytuGY=;
 b=iPtruDP0R1GTz72690B6YuQz+wDGQYg8shuKMVIgGfAZtown7gY3x4QJgVKm0z8Q3l
 yJTyxd4pWMIUi2LIkw2Wix9hJljM2f8TiPDOO8xLcPvRNjLYx4T8pBdtv9uknQzaiWbN
 uOPOXZzihDBp0Ut3G38GqgWE2LsHpzUNt1gjgdWfAkgQF6NUNmPcx6SPgRw9YgvkeH0R
 5lzgy60vRlRTVjrwqscDzO9yB6KzDA7JSYjsS6MzG59KXdNVbAJyZWqSQNs5QgLREXfH
 ikyYaroJ/MxCTKVm9wD8kibsxbCo/zKczBuvRxiYNAgE8Twc8lKo5X/3vQON+J0cr9zZ
 VP+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AaXDCkcG+1hhIuOmzxcS1zc8TF7Qi6nLjazouLytuGY=;
 b=g+NEa7+KYckC9D7eiKspWUFgeC8rw3kglBEeuokJULt67OASpzFXA6HY8rDd70lA1b
 MPytPAz4tqo6P7Ge5RLwE9U+Ux4/2vHOinNWCE90EkUdUkLURHJ6EUgD7Ta0Cso8s1w/
 7kVTJHXTjpnm5eUYxJVQR7fX55mM7Sk84OA7Xbv2t17NBbjmwOTyoAo/AJDPN2sn2oBR
 nioUhjJ6n+9U9DG0jGJoNJzXp1x+kpxx3G9uCus47/ik7Q/fX1CQg7sIKjg/JSrFQqPX
 ASF2PoBI4qNoDiz1+06Pl/lEF5VKJkXAVcLrxdKd2YEsdgmmGpfSB1Mk0EIA//elP3t0
 mX0Q==
X-Gm-Message-State: ANhLgQ1DNEe5GrGHTsEliRDSpZgcN8UShUZ/Ln0oU6lzTQeri1gQtJHY
 UIQQAzfxoqDRVQEbuq74hoG4yjoDbU1txjsmN4Gy4ILa
X-Google-Smtp-Source: ADFU+vtjg+uVpGa9lqivPkoKx630kDYyjqsbQfoOcyWAzUi5llElefRbPreq4oz1pqWBuroLr8iWtgBScSlNTT5zroE=
X-Received: by 2002:a4a:d749:: with SMTP id h9mr4244932oot.15.1585211469288;
 Thu, 26 Mar 2020 01:31:09 -0700 (PDT)
MIME-Version: 1.0
References: <20200326013450.1774837-1-rosenp@gmail.com>
 <26e3ca73-b681-c0c7-bf22-4067b67493fb@wwsnet.net>
In-Reply-To: <26e3ca73-b681-c0c7-bf22-4067b67493fb@wwsnet.net>
From: Rosen Penev <rosenp@gmail.com>
Date: Thu, 26 Mar 2020 01:31:07 -0700
Message-ID: <CAKxU2N_WXojmK4NrBLtvQsOrUpYNR_TXnhT3ScV6GZSzvd9fZQ@mail.gmail.com>
To: Jo-Philipp Wich <jo@mein.io>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_013110_379267_35E369D0 
X-CRM114-Status: UNSURE (   7.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] busybox: remove date -k patch
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Thu, Mar 26, 2020 at 1:04 AM Jo-Philipp Wich <jo@mein.io> wrote:
>
> Hi,
>
> > The kernel generally only cares about the timezone in a few places:
>
> last time I checked, iptables xt_time was affected. Without a properly set
> timezone, rules will kick in at unexpected times and --utc / --localtz /
> --kerneltz will not work as expected. Did you runtime test this?
No.

I've posted two patches for busybox. Seeing which one sticks.
>
> ~ Jo
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
