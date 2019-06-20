Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 674494CA8F
	for <lists+openwrt-devel@lfdr.de>; Thu, 20 Jun 2019 11:19:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VhtAy7jYvvDH7/IMupXYcY+hm9UA3VvwVIZ7vDarCq4=; b=JeVusErh6jDYE0AMR9Irwafos
	CC2xBM8MCzj3DBONwbUHVChyCRKjIfehQZ1xQLVdV0zGy7GFmKL7XBmaocGNCDPW+QrrZGP/TvrfP
	FDQZXapyCZiKIsxNfzzlmFs7ri2qiE75WlukXuvUMnXt+u8ARypjJEC7X8wOdCj6KWFk61BxvGWLC
	MG6n/1th3ImOfRJSCe5LBY1HEkUZGap30wSd76+9glEUrJxxkLobueK4Kvw0N2HO2bD3hKP33zWKZ
	DqK9Xr3JIxhrbbKGscbYJSGuHjRXzlevoYef1AWEPN5j5PDrSHwa1sg1qK1zA7sN8cCllcJhFTDB1
	vKsaTWvHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdtDT-0001ND-6j; Thu, 20 Jun 2019 09:18:47 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdtD5-0001LX-BG
 for openwrt-devel@lists.openwrt.org; Thu, 20 Jun 2019 09:18:25 +0000
Received: by mail-ed1-x542.google.com with SMTP id k8so3625370edr.11
 for <openwrt-devel@lists.openwrt.org>; Thu, 20 Jun 2019 02:18:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ncentric-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=kkl4PqYba5DNgRtzZkU7fKK2ONyPeLfrSF6TyECupAY=;
 b=dKgVGqrbG0R/D/pCxBInYdu3UBAPoUVlpXxN0Z7edk609xMuhQNx6tCjU90bdSqwO3
 f0ymb1zIF0nyBS6xnRlysK4OSBJvBjvb2vavQUNho5yixkBpvgdFum2hGHs6eTpgMTPt
 BfhXQAnqTDj/xS43vkYwrOLRWHsWmlLSh+ySTQjXIA+m+VBAZAlSRo5KkXQwuFVn31+Y
 Y7mXKHw/BzzpCnmb63KFuSG70cASeBgWsArkDcL2EogUL0JfZitT1IkfYmNQUiCT2Mgc
 opaKwBQ6rFuS7tx5pzFI5gKdn3gLO4qknIOMVMfsFDrwXsHvz7XEK2uLO/U4bcy7b/Wt
 jzAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=kkl4PqYba5DNgRtzZkU7fKK2ONyPeLfrSF6TyECupAY=;
 b=lQvaw+GVhp4LvJHhmyw+U5Bl/bMS2GD3vbNCZ2dX7fqu4/g6Z6rCXKD8ZIQaC90iLb
 0HqIgk1dYSbM26ELgDSKzjmG42bMRVIsJQx67zrD3xC/tZnd/V8pEV4RKYmTFtrcFTDE
 E3+6YuwZuFI3KDN0cfH6IxWCeaLoky8873/rTMrEfQ8s6Z0LFlkh7qFavO7rrmXFcdFP
 TcpJ+W04F92K5LRLtWqPfI/5HamOsDu2ricQxEFvEknpI3U+Cp9paS+5XCFltF37tKPO
 cZz/j7DFEainPyFznLrKOff0SxUz1TsYTIEQO97QMnt3/2b6DMIvclZjPyclqwmjmo9d
 T1nQ==
X-Gm-Message-State: APjAAAVZZIPy5hkpnwcpULILFrDfK70RLi2R9kO0/VrFwTYqv6ut+5d0
 Injg4CBR7VlDG/AWlGmcwk9dgUuun8k=
X-Google-Smtp-Source: APXvYqzJLtRVZOIZKtUXlZxYD99mFnlTmEWeeHoBnwj7K+9YjdNPui3sQmCawb9hUqyBOoPkgVzxug==
X-Received: by 2002:a50:94a2:: with SMTP id s31mr98586691eda.290.1561022301143; 
 Thu, 20 Jun 2019 02:18:21 -0700 (PDT)
Received: from [192.168.3.176] (d515300d8.static.telenet.be. [81.83.0.216])
 by smtp.gmail.com with ESMTPSA id v12sm550673ejh.48.2019.06.20.02.18.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Jun 2019 02:18:20 -0700 (PDT)
To: Tautvydas Belgeras <tautvydas.b@8devices.com>,
 openwrt-devel@lists.openwrt.org
References: <20190619094138.5431-1-tautvydas.b@8devices.com>
From: Koen Vandeputte <koen.vandeputte@ncentric.com>
Message-ID: <9cac96e6-a3a8-b65f-995c-0e8737fcc909@ncentric.com>
Date: Thu, 20 Jun 2019 11:18:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190619094138.5431-1-tautvydas.b@8devices.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_021823_407391_1062DD50 
X-CRM114-Status: GOOD (  20.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH v2] uqmi: add explicit check for message
 type when expecting a response
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


On 19.06.19 11:41, Tautvydas Belgeras wrote:
> When the utility sends a request it expects a response type message,
> but does not explicitly check for it. When a device stays idle for
> some time, it switches into a sleep mode, and notifies the utility with an
> identification type message. In some configurations the device only sends
> this identification message when triggered by the utility, in this case by
> the request message. What the utility gets is two messages at the same time -
> an identification and a response. When it tries to decode former it obviously
> fails, because it is not what it expected.
>
> Signed-off-by: Tautvydas Belgeras <tautvydas.b@8devices.com>
> ---
>   dev.c | 6 ++++++
>   1 file changed, 6 insertions(+)
>
> diff --git a/dev.c b/dev.c
> index a586157..5f6967e 100644
> --- a/dev.c
> +++ b/dev.c
> @@ -79,6 +79,12 @@ static void qmi_process_msg(struct qmi_dev *qmi, struct qmi_msg *msg)
>   	struct qmi_request *req;
>   	uint16_t tid;
>   
> +	if (msg->service == QMI_SERVICE_CTL && msg->flags != QMI_SERVICE_FLAG_RESPONSE) {
> +		return;
> +	} else if (msg->flags != QMI_SERVICE_FLAG_RESPONSE) {
> +		return;
> +	}
> +

Shouldn't this all just be:

if (msg->flags != QMI_SERVICE_FLAG_RESPONSE)
	return;

?

Koen

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
