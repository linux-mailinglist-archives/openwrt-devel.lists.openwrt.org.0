Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 570C888BC2
	for <lists+openwrt-devel@lfdr.de>; Sat, 10 Aug 2019 16:31:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:Message-ID:
	In-Reply-To:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3baBhvOOv3C0Yt792OozeqTatuRT00/+1nY+JpyWUFs=; b=E+x4jMx7BH2u+6PO4mxhNocZ5
	Qe9CnF0y+ZW5ChPR0cPFMGFXjYR1nHWd3vdqqKj/1+IoGLNk2qy7eNiDcihfCUVl2rCx8bAq5dTSZ
	nrYPYD4ewBlHyp1ZrGDbnPnV7zB266TEoQw+n1vUnA8UCHV2AQ9PWGNjIzI8KjHR9aNoRabdm8sg2
	BvevaYX8oMvAc0x8QhePZoLzo9ELV6TmjTmQsLY2qfoeZE3/VlpRZ/9Ir2sXtExWZVLKSM6cuM2mN
	zZ58ikm3tJdykpCtiwcfy6yjjnsQqw4Ol1s/Cjs+M7FxNkyes8RJAlz0ZzkScEDj6jQJpYYJ8r/sV
	i7SP2B+KQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwSOZ-0001VJ-HK; Sat, 10 Aug 2019 14:30:59 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwSOQ-0001V1-7L
 for openwrt-devel@lists.openwrt.org; Sat, 10 Aug 2019 14:30:51 +0000
Received: by mail-wm1-x329.google.com with SMTP id v19so8037983wmj.5
 for <openwrt-devel@lists.openwrt.org>; Sat, 10 Aug 2019 07:30:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :mime-version; bh=UuqGy89ouDjywu0Zwh/3Hy+yYUllH5rw0pRQ9LQ5VTg=;
 b=Tq9MoblIhe5bYMDqkDq2LOYw0UIEA7L9Yl73HIR3L6RypX9AdLIm6Y9pLT0+ZPq3Q9
 ve7Qe9aX+3D7dguBz8JofibfJmSDQxmewH09/0a1/FwYRD0bXchQFCBrbxRMOXd6JzFC
 QCtnI0W874GPh3yfCbUPfTS80T//xYa1VdFQOrnt0xfyVPzfxK3uI5HSE+Tmkhiy5nXQ
 VqzSigy8Gcoguv4w8tw2p6bbGuWX8a7xVREuQpnw2ObH6r7tMcaKM2TIJYKIZV24Z3Ti
 xOZoHbYyDE00teopyl088w/NRKxw7r16pv5ajWG/qNtBG6a97iDqX+n6VfMAVA8Qv+/d
 pMQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:mime-version;
 bh=UuqGy89ouDjywu0Zwh/3Hy+yYUllH5rw0pRQ9LQ5VTg=;
 b=gnYXlHesZIcTgMU4TenoXP9CUR//pKrUfNTGAjaX1sfhwEuJMdrrvZQ2XiONPF3jV7
 FTAeAvoM8ZwWyAWu+ga+YPlyx7KE3rD6aNTu5YgE1tGWzcwmrChzPtk1m1MRjeRADeFf
 5n3H07d2+a0PvGBfNHX5MjTitPBHgZHfjsprPXGddKgjMpBjA+SgZgOgWDva9dNGsokh
 I8jGxLK04C7uMo4p9qi2xz7eMleQibQZtp2oFSn989TvhcvI0PX6onHLs9AePn5XcS42
 92WyDx0NpmOlREni+fVJ3LUddW6wR5zFnv/BRHS6bj0HZ8NRdBF3ZhdAclIxljuYp3Vh
 iP0A==
X-Gm-Message-State: APjAAAVtfDNRpEBsLp3u7nRc8uhaAkHoA1Yg9QG4TX5qdcvBvNTUrZT3
 pLeXfs3YKVH75eSvIJhFbp0IXR71
X-Google-Smtp-Source: APXvYqzj+hwjGp0xkPBcsvrX74Y78GVwlrNbnwWVoddx9ZX1gDtdGDKp9UEjI0G5KThaLFcgU68d+Q==
X-Received: by 2002:a7b:c8c3:: with SMTP id f3mr17961845wml.124.1565447447817; 
 Sat, 10 Aug 2019 07:30:47 -0700 (PDT)
Received: from localhost.localdomain
 (host78-240-dynamic.54-82-r.retail.telecomitalia.it. [82.54.240.78])
 by smtp.gmail.com with ESMTPSA id i30sm7685233wmb.20.2019.08.10.07.30.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 10 Aug 2019 07:30:47 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
 by localhost.localdomain (OpenSMTPD) with ESMTP id edfc2212;
 Sat, 10 Aug 2019 14:30:44 +0000 (UTC)
Date: Sat, 10 Aug 2019 16:30:44 +0200 (CEST)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@localhost.localdomain
To: Joan Moreau <jom@grosjo.net>
In-Reply-To: <mailman.16115.1565442835.19300.openwrt-devel@lists.openwrt.org>
Message-ID: <alpine.LNX.2.21.99999.352.1908101628250.23494@localhost.localdomain>
References: <mailman.16115.1565442835.19300.openwrt-devel@lists.openwrt.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190810_073050_292266_EAE91E03 
X-CRM114-Status: UNSURE (   5.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:329 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mrkiko.rs[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] Has OpenWrt suport for Powerline devices
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

Hello!
I guess this is in a case-by-case basis - I have a TP-Link RE450 which is supported.
I know there are also Wi-Fi-only devices, but don't think OpenWRt supports any of them.

I guess this happens also due to the amount of flash and RAM memory those devices have.

And - if you're going for the RE450, keep in mind it's u-boot doesn't seem to have any recovery method, so soldering an UART right away maybe a good option.

Enrico

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
