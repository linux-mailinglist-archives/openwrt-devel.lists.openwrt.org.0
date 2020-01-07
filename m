Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AA2A13305A
	for <lists+openwrt-devel@lfdr.de>; Tue,  7 Jan 2020 21:10:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q7twu0vo0B71WF23csxCP4TqyvhB7d7PVArBougM2Lk=; b=Z2YT+rOdbAbi5K
	7QjZXGEzu2vtAupc492mpnNbA9nGU0MFS3wMr4glrFnGSkLMarUMPWlLj/a2Hiap6rzVW9sf4BUma
	iMROctxSoGKGzl+oNl7u/aTKQkoS0JLgPnEbt5KTofQkoTY3oIYvTRzZttj34fzNkz4EGMYbrKJ8U
	5laJ0nD1el5rMORyk8PS2u5OHBwV7jnBxJ5QD3x0QCKhbjSkWhRk2UfiSclNz0054hUNb6X/X9SD1
	YveWUMQlNpUPFEL2wKjbTqZSmpZPwSDQEcqjoLTTQruksu9sX+fRJKZYnIeK/oaGVbjjHBMfA2oBS
	V5hpuZpbag0BErF2hSPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iovBD-0007sb-1b; Tue, 07 Jan 2020 20:10:19 +0000
Received: from mail-qt1-x829.google.com ([2607:f8b0:4864:20::829])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iovAw-0007V7-4B
 for openwrt-devel@lists.openwrt.org; Tue, 07 Jan 2020 20:10:03 +0000
Received: by mail-qt1-x829.google.com with SMTP id n15so833929qtp.5
 for <openwrt-devel@lists.openwrt.org>; Tue, 07 Jan 2020 12:09:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SSGNfnCxvj1AdVdxKKTj622X9RY0irA9/wyWjzJjLsg=;
 b=mnLQpV/BvT931C4QhpGRxGSuQdL7n/GpjP8jLriRPK/IPUg+u0m/Mdm0Y3Rf8hVa3h
 O7Q2jPCCZzDh/ObclhP9rPWg/GVbYeqlhnohXlqcCqvWIBNWiJPLbJoYSjxn96CUNKxQ
 RSx37/c9AHh0rRLejvPWyLB+UOO+4buHQBkzn9TLUS2kxm+JbrEVW4kG5ODQx57rCpHj
 oNJH3YT9H7WSivyFWmza+4F0gOUCQmzsndplcXndImhJ3YdFhnVLGOQyi42EI1yDodyB
 yBOxnLzrvZi53l9GL9HGQ3QRRi7+fb26gLgPVmOwRusqITpmxwL8NvuM85HoOLoxzh/7
 312A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SSGNfnCxvj1AdVdxKKTj622X9RY0irA9/wyWjzJjLsg=;
 b=mQjIanKH4paPVGhxGHeGikT8hd+TeGRwaHQYH0rYmbeAKmzaNWV5w2aLSqoRGTv+YQ
 CZX7Py1rcUYh3cTNFZW3DsFhml0/UfZdTxxLrsdz1CnpmfFvWdstzD7Np+1RaS94TzXa
 bPfAG2AaPaEHmCf/spZ4Vr8lo8Hgq5MLOcnK32/DZPxwpwgir1RUCiT0UmoQtzB0ABMN
 mpLe6ZmaUauYqQHQh1XjsFDKaQdlG08SJvdFGI8YVn9Xji/LgUD+jy3X5ak6Rgogz9gd
 pkDBkpzWbB93nsBjbJ8HJLXD9Yv6r/bg5G91p9cKkqmfub+tp76xoCipMpanAq4HJdEh
 P5ZA==
X-Gm-Message-State: APjAAAUr8abXVB+zkhxnitXb9y1JogGRvc7Me/7oAjDEcpih/z2jdxII
 fzWT5qVPi0K7q9MtpAzYzU9c0dgCtQ8GoEUaLnU=
X-Google-Smtp-Source: APXvYqxWQ33prz1Jl0BiZMAt10vKg0OD/B9QS1D4GIuK6jYj0iK+DiEsZoSfsdQHcBsvo2q64G2DuzHokNSF10CTa/M=
X-Received: by 2002:ac8:24c1:: with SMTP id t1mr599913qtt.257.1578427795781;
 Tue, 07 Jan 2020 12:09:55 -0800 (PST)
MIME-Version: 1.0
References: <a42e0ef1-b2b8-4f77-624d-2a8831fe073d@hauke-m.de>
 <58c97e81-f7bc-f12b-9f1e-d59a086fafc7@hauke-m.de>
 <CAPxccB2+SKHwpZ53pvJZGzCXxBvpMokzGoK-ZzkCA8CnJfLm8Q@mail.gmail.com>
 <29aceaca-e9af-8327-7e52-dbed8d550d32@hauke-m.de>
In-Reply-To: <29aceaca-e9af-8327-7e52-dbed8d550d32@hauke-m.de>
From: Eneas Queiroz <cotequeiroz@gmail.com>
Date: Tue, 7 Jan 2020 17:09:23 -0300
Message-ID: <CAPxccB3mcM1JKJ5FG38GPpOB7wwZ6DfeisTwZbK+F4z11rAG1w@mail.gmail.com>
To: Hauke Mehrtens <hauke@hauke-m.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_121002_223424_6CB74F21 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:829 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cotequeiroz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] OpenWrt 19.07 final timeline
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
Cc: Jo-Philipp Wich <jow@openwrt.org>,
 LEDE Development List <openwrt-devel@lists.openwrt.org>,
 =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Mon, Jan 6, 2020 at 1:59 PM Hauke Mehrtens <hauke@hauke-m.de> wrote:
>
> I cherry-picked it, but WPA3 still does not work for me.
>
> Hauke

TLDR: WPA3 support with wolfssl is still not ideal.

WPA3 success was reported to me here:
https://forum.openwrt.org/t/wpa3-wolfssl-fail-openssl-success/50161/7

Another user reports that it "feels a bit wonky with WolfSSL 4.3.0",
that it takes several tries to connect to the network with a Nokia
8.1, and his laptop does not connect at all.

I'm not using WPA3, and haven't got around to see if I can test this
myself.  I know WolfSSL deliberately fails to perform some actions
that it deems insecure, while openssl succeeds.  I've tried to spot
some of these situations just by looking at the hostapd code, but I
couldn't find anything extremely obvious.  Judging by the partial
success, it may not be the case.  I'm short on time right now, but
I'll open an issue with wolfssl as soon as I can.

Cheers,

Eneas

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
