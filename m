Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3EC31550D2
	for <lists+openwrt-devel@lfdr.de>; Fri,  7 Feb 2020 04:06:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vs07+LLdyT9NifE4a/fk3y3peiNJLE3eRQ81TrSHy+U=; b=jtP/Ry2CB9Vqxf
	JuyrhhhtJSXf44dZkSjmYPoXPGwAfwicSlyFlafXXS6kUAgVP29pWYZrYjZ7+t6dA22H3448PgsNZ
	7SQA7mtqbjk82d9fxCBxH4sz99rUDP5Ox77jkGP2GZZsPffNjr+wAre36hXa1GvVMFWgx41FE5ipd
	q14QLLCCGtSCICCU6cA3zY+Wa6fAgsKuYVB81Igh5IgWT8TkjnbcXj6TKp829t7orN1Qd3UsjtQ6C
	LzjaqBzMszK5umbSCIvO8cQRQz93nFBRafcvuELSGZA5ALUKcK+7EOqVM7rXX+KxOoHI1489MZvTx
	az/5St9IM3/KzFLR9/pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iztyZ-0004Fw-AU; Fri, 07 Feb 2020 03:06:39 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iztyO-0004FY-Uh
 for openwrt-devel@lists.openwrt.org; Fri, 07 Feb 2020 03:06:30 +0000
Received: by mail-oi1-x244.google.com with SMTP id j132so631265oih.9
 for <openwrt-devel@lists.openwrt.org>; Thu, 06 Feb 2020 19:06:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8pGpByHXCflwFU0roxIS3Rhf9VzocMjeNsLkzpwl9rM=;
 b=ohnTWU3rE5CJbYJsswKXh5PQPXqIS99H73a3O9dp9tZJ1sGdLXijM636J+in0UPmnF
 8KU7wggRkjIhRi0RC9saX8iYDj7jNmHOg3nVLLA4r2IB1cudbE+8qbwQLxQakKvUHD9P
 gu5ykgeE/c2EuZcHUkc7Gtg6yrIm0jJMPb16Oo9+tRYvulbLVmcBOGMUYBsydDhMLZdM
 eTLq8uIGNzRRK73c+J2XmZv+ZHS1uQHNhTa4YDR9iEcy6iI+Ake6AtHZ4CLz097sIxwM
 mdAX7ZeFcTzWubLONLYwV4nEmzxBSZ2gvRzW590SgJuJeLpNpsnkSxatMllweicWLM4O
 sczA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8pGpByHXCflwFU0roxIS3Rhf9VzocMjeNsLkzpwl9rM=;
 b=VqWMBfAe2DtBIWD1XBo/Z2L6eOKBLIWVdtO3mrOtlIiJXNWeTt1eNIrtZzn9D3Xu1t
 uM2+GAbXezL0s/w3Iq8iOXB7FHH/7exJs1cIosim3K437KphcPR6WevtNxS/Fljt+x2K
 eqCpWZ1mGiOWeaZfubji1mdrDkhZ6gj1h/qFObbuw1j2wOCp/73Hed+nyb14os9Nrwff
 HVqsl6BeeVaw2njLEFgRtTC4+LRxGH1YtcDKeXfrjqh2TCKCdyYreDC7pbmdF6XvY1Kf
 Mr6tuWNCaglzko+5MV3oIASwRdq3kqO65PwvRkJn0AwaDTGfU7NhAfpH6dDKH7bZ7GEY
 aklQ==
X-Gm-Message-State: APjAAAVkz00jxsa9OiMuZS7IZGRkEBE5PlEQhpdd6O+z3YQhuLnOEWLn
 mpigJARYFbd/7PPm9Hnuaz6c/mJXCIzM5FeaHGA=
X-Google-Smtp-Source: APXvYqxYPqHcSfBNqijmhPDoDgUstI4DfCugmhaYDbim/hv6BUEtyAx8fi7goSF/mnZTmMdBb3FqExj3rcSzOYYSANI=
X-Received: by 2002:a54:4396:: with SMTP id u22mr692955oiv.128.1581044787150; 
 Thu, 06 Feb 2020 19:06:27 -0800 (PST)
MIME-Version: 1.0
References: <20200107001203.22342-1-rosenp@gmail.com>
In-Reply-To: <20200107001203.22342-1-rosenp@gmail.com>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Fri, 7 Feb 2020 11:06:11 +0800
Message-ID: <CAJsYDVJvB8kkELcOmTOxRu3g9Omg=gZo-QD-ACz=pYX6t+X4SA@mail.gmail.com>
To: Rosen Penev <rosenp@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_190628_991065_D3A9A4AF 
X-CRM114-Status: UNSURE (   6.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gch981213[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [gch981213[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: ag71xx: use
 netif_receive_skb_list on 4.19
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

On Tue, Jan 7, 2020 at 8:12 AM Rosen Penev <rosenp@gmail.com> wrote:
>
> From: Chuanhong Guo <gch981213@gmail.com>
>
> This new function make batch processing of network packets possible,
> which slightly improves performance.
>
> Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
> Tested-by: Rosen Penev <rosenp@gmail.com>
> ---
>  around a 20mbps improvement is measured on a TP-LINK Archer C7v2

I almost forget this commit now :D

Merged. Thanks!

Regards,
Chuanhong Guo

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
