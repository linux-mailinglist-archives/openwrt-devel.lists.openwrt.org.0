Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D01E557FF3
	for <lists+openwrt-devel@lfdr.de>; Thu, 27 Jun 2019 12:12:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/S9mWXWPZFJkeX9pcF/zjMPwSDtSfqfD8xZjvnQjVVg=; b=iEj0e8pfkxFnNcK1GPhEevyww
	6V2Lf5d+yVzYSbSh4QxyncybBnt2oCm5wabKsYneTxEnWJe/HfpJgGCvQ0GkERQQyYbuMJaevxdrj
	IXQ5GCcRBUh44UEi/TBiC6pR6LpTieVAQeF1YZ/trMt7zf+CW7rjb4twzJRoi4Qz6D89JZzrG+Vhc
	VdpTGgk8PY7hYioBSelPFrdsB4+n3H6UPwQkPcBfaj0FfwmTSG7N7G3ZOa1gflGaVxEzdzr2cCh3X
	3owJxrLKBuseI6rKS2PGqdyW7MvGrBztGYOcF+qC8VhaVTxD/CMXoDyM7SPX1dDXZSne+UlhitlRK
	T8KpWJwqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgROX-0006Kn-UU; Thu, 27 Jun 2019 10:12:46 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgROF-0006Es-Rw
 for openwrt-devel@lists.openwrt.org; Thu, 27 Jun 2019 10:12:29 +0000
Received: by mail-ed1-x541.google.com with SMTP id r12so6541745edo.5
 for <openwrt-devel@lists.openwrt.org>; Thu, 27 Jun 2019 03:12:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ncentric-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=M1H+f1TIgfuavM0QZUbD/mV1FZt2Xjus1/1nC0xgxMc=;
 b=crPraF54tRxd6J/7FregEnxQmVo4LZY2q41vIidAT6zGzWlkk5/PyPtXZFGPW3nipx
 xnCY/Or/YN/1wwfPQZ5isqz5LkuDmbKUGmTQftibPGg5fTjeszn/XjBJyyYqKMa3Pd6q
 jf3+ODeYZcv04ouXctghD74fd1a3t6JV+yEV9KF7VhMGbxJDJbYSiOBgyaST4GRbR3wI
 hTtD3bMCb3C9Icw8s30el+ExR7dH3qrTKCMglp7AyPDa/Yj3ZeUjHU35LBBvgLsbgSgx
 kpqMQs9l1aufXvcFuWZtLL+89KlYcEBl1tc6gokX7B7+u0o5B9c06OweKETxJn3SnAM5
 OiOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=M1H+f1TIgfuavM0QZUbD/mV1FZt2Xjus1/1nC0xgxMc=;
 b=PdPLjx38hmA8c4WxnWPGh1fVxfU9QsKX74/XqKJZZB8+GgDsakz3UDZ0+h0y9e38a0
 JFbcbpnOtTCQXRTmxPUurNpDRHl1AVHDknuO17MFpA/4iwmEGZOrKy+pjckNPJwY7UYY
 7QYiY6guFjjEFdlndiVEiCKk5Hrst8qejYJDrAGjB5rCE5FvNFHyPwYD/HvtzuplPlJJ
 aLrvslRK20rCNBT2pnRD6PtsRe/AZ+tYCilQ38d8UBGFt+DVzB4ROh9SPfpqq8Dm+HAl
 1DimIGjIDZCygJbg6r9kfalcTd9ldEM4ZLlfpCZyWyH3Tm3y0kZz1DAaPaWZI+Uo7hU2
 Xreg==
X-Gm-Message-State: APjAAAX6h09fM1Dx4i7qBvBKl6G0Y04J1MqTuhXn8HSKSQTpN8kr7kmt
 COcC0AOTEQGIvtWq2rXcEfe0o2gRywq7DA==
X-Google-Smtp-Source: APXvYqwi8NzyfJFDBsg0XUZfZ34dMGp6WZKFZvWR4N8UQtkS/IQNztE7/zk99lyP+siu7gXPdEntAg==
X-Received: by 2002:aa7:c14f:: with SMTP id r15mr3096431edp.116.1561630337171; 
 Thu, 27 Jun 2019 03:12:17 -0700 (PDT)
Received: from [192.168.3.176] (d515300d8.static.telenet.be. [81.83.0.216])
 by smtp.gmail.com with ESMTPSA id c3sm336792ejo.43.2019.06.27.03.12.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 27 Jun 2019 03:12:16 -0700 (PDT)
To: Tautvydas Belgeras <tautvydas.b@8devices.com>,
 openwrt-devel@lists.openwrt.org
References: <20190620104519.16917-1-tautvydas.b@8devices.com>
From: Koen Vandeputte <koen.vandeputte@ncentric.com>
Message-ID: <47a49c34-7254-7e8e-ade0-7e5873231017@ncentric.com>
Date: Thu, 27 Jun 2019 12:12:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190620104519.16917-1-tautvydas.b@8devices.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_031227_933139_0268E7AD 
X-CRM114-Status: GOOD (  19.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH,
 v5] uqmi: add explicit check for message type when expecting a
 response
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


On 20.06.19 12:45, Tautvydas Belgeras wrote:
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
>   dev.c | 3 +++
>   1 file changed, 3 insertions(+)
>
> diff --git a/dev.c b/dev.c
> index 4bca429..bd10207 100644
> --- a/dev.c
> +++ b/dev.c
> @@ -96,6 +96,9 @@ static void qmi_process_msg(struct qmi_dev *qmi, struct qmi_msg *msg)
>   	struct qmi_request *req;
>   	uint16_t tid;
>   
> +	if (msg->flags != QMI_CTL_FLAG_RESPONSE && msg->flags != QMI_SERVICE_FLAG_RESPONSE)
> +		return;
> +
>   	if (msg->qmux.service == QMI_SERVICE_CTL)
>   		tid = msg->ctl.transaction;
>   	else

Merged in Uqmi master

Thanks for the fix!

Regards,

Koen


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
