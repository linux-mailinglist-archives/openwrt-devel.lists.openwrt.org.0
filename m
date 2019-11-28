Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC53110CEB9
	for <lists+openwrt-devel@lfdr.de>; Thu, 28 Nov 2019 20:01:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zPuU8QyV/8R8F90qarX4j0bkrI+1KqR1CjEWVLrnn5k=; b=GyWSdv5GN8kcZMRIqiyNnJkt1
	ceoR9tuFPoJyS1dohPb0OLO3J+iTBxrvsZ8sp4iPi8lb02iRjN5+kg15FqtuX/9gXT5ElbkbtTGBq
	DqgiUYVZVe3+6JpvzpXowdENpoGlxGruk6tBOzzTOWq5L+hR/rCeEEPmMzVM8etmDDeo2sVFgQzrD
	PNLcDIqW9AKfJGv1nHshbXHILrr9dvscsb3mHH7oOj+uoXj1w7mow45eNKDBKvGYAyLrEBEyynQCM
	NwMT8Fqbz5JMw7/6jO+oMi9Zq5ua+NwEgdeq82e0YllfaOpiBO6z0+MznSh6z7dJfPU+UdAvTZCCL
	0haXKO14g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaP2k-00021h-Iq; Thu, 28 Nov 2019 19:01:34 +0000
Received: from mail-pg1-x536.google.com ([2607:f8b0:4864:20::536])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaP2c-000217-4w
 for openwrt-devel@lists.openwrt.org; Thu, 28 Nov 2019 19:01:27 +0000
Received: by mail-pg1-x536.google.com with SMTP id l26so3117027pgb.8
 for <openwrt-devel@lists.openwrt.org>; Thu, 28 Nov 2019 11:01:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=RLRzi5AN5BebDt6PQpFCPSvZClbcSITFh3hZx9QaDOY=;
 b=TcdSQ0HiMZcWxDbV1VIdbFjfiVeyQ9ROYRiCGePoP0B09bRKjrXfEaAHMlKqWig0Wb
 //2jfbpiaaP47CKHSgN82x3qCJ8Q2Q4+lDkv/KtAtZDRtGEUr8xdcSgdqiCxChhOyPSG
 WRHNjgcyH7Qp+/u/uhuhbFS80GIQp5ku3FD7bg3SCZj0QXfWtkU4j0KSgKTxemkArnCI
 Q17c6i8lcQHX3pihjHFkJp1NGc+By05ddOkZLmRv9SRbgg3jpPq4pZheMQVLL4XXgXzY
 I1uzFr+N7t4oXVSFPPWRce82XaxjfSbRXl7J56M4rwd8otVZyQzyoaeu9S2dyWAM6UBL
 32xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=RLRzi5AN5BebDt6PQpFCPSvZClbcSITFh3hZx9QaDOY=;
 b=KPbE2INz+4eW6eCmL61afCmUs6F8oeUGGA8TrndBQWMmEuiCg92BbZ1/tcaDXBZEuQ
 eH4B4nu7x1pTutaUO3qyshIT25otbYlnoh3ABPGduHpJjelL4Xb0oYAJgB3jjtlQYCW8
 mXqXTbMS5kFuCWhwh7w94SGNi98Re0BFuuMC3we2JNwz8WaAwQXSEJ7vFitM/WTAbsvU
 PMgOL7GXvUPMC8DZ0K5ROeor41+qWyL05AFf9qeOLa7Pbz+JOGM3dPMKv0xwyRBNYgiQ
 QqsfZfMc0s9NnopY9PjOC/Cj683vgzKC/GbZFGvemspau3l7l4oN7Qr0/TbWvGEmgm57
 XGAw==
X-Gm-Message-State: APjAAAULCvgVCs+cyfTJyhpFdmQQo9cqcwpRtLFqG27t/NvqFJeTHgiG
 x+fY1exC+KBRJnTRMaK0TfwRWHuP
X-Google-Smtp-Source: APXvYqx0wKGFkuxJ11rjc5pxnBG+SmOi2nuL4fQkOg+CzKS67Kb/HuGtncd3qF3/86JPOiPjDLGFIg==
X-Received: by 2002:a62:6086:: with SMTP id u128mr54568727pfb.4.1574967684615; 
 Thu, 28 Nov 2019 11:01:24 -0800 (PST)
Received: from [10.10.10.161] ([27.109.24.18])
 by smtp.gmail.com with ESMTPSA id x7sm21414512pfa.107.2019.11.28.11.01.23
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 28 Nov 2019 11:01:24 -0800 (PST)
To: openwrt-devel@lists.openwrt.org
References: <CAECwjAh__fE=qWmXtyTFUzTwSHGy_0v5MC4n=VJ6qVc=Hq0w5Q@mail.gmail.com>
 <d0abeb47-099c-7eb7-c8b0-f191c52d258f@aparcar.org>
From: Alberto Bursi <bobafetthotmail@gmail.com>
Message-ID: <754027b6-9e59-8ab4-ef7d-0cb0970b8d7a@gmail.com>
Date: Fri, 29 Nov 2019 00:31:08 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <d0abeb47-099c-7eb7-c8b0-f191c52d258f@aparcar.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_110126_216740_6A57BCE0 
X-CRM114-Status: UNSURE (   7.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:536 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bobafetthotmail[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] Running k3s on OpenWrt
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


On 28/11/19 22:02, Paul Spooren wrote:
>
> I know nothing about sunix, but the other three targets appear mostly 
> space "indipendent".


Sunxi target is basically a bunch of Raspberry Pi clones using different 
SoC.

You usually have a SDcard to store the OS image.


-Alberto


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
