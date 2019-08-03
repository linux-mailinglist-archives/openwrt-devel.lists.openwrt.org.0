Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AE1780707
	for <lists+openwrt-devel@lfdr.de>; Sat,  3 Aug 2019 17:44:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=msgLRuoYXQg9IqLt9s3bbAPqDrARA65eHSAjSKF4o/I=; b=RlQ1ix2nSbkIzD
	d3b2TD960LLKC5V8ZKDBOWAR3IeykknJgHk8Yyewv7/+tl/KjGBkF0LfeDqPe0RS+62sU8tYgQC91
	tfONxJwQ8bC8A6Rxmo9QQuiGY1XyTjvqOCgB7RFebOSc+2MYQbF91pOfO+QP6uUdR5wLO5xtcq8m5
	WHlw6EXZfvhQ/8IoSO2OUOqoTZAo2tQrUIXu5YtQNj9ASlSBts+pg3G1W/Do4DJRNhj/1CiWi4Bx3
	l1j84+2D+WqXUGgJfBlwLYzAjeyjc9clyqsNyMBmguCCCg04421umdpPoXP1MRHzfhBQSGmMp6+G5
	PqhodaB0FnfE5qupKtaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htwCr-0004ab-FO; Sat, 03 Aug 2019 15:44:29 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htwCh-0004aE-Vq
 for openwrt-devel@lists.openwrt.org; Sat, 03 Aug 2019 15:44:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1564847053;
 bh=7AT4By4kc32GSDvogaTLNfzSBlIfzIvv0hxBYBdplCA=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
 b=Yzkvj+7ay4e6USmaeVgiWIqYaxJfgqDk/6NKRsJlj6Bwe3jhbcX/tevuyZ2BA5EnR
 uynZtPlSI/znAq5jIXPYd+1MBM/jFSpcjkVwe30Hp3l2aOFP+cvJZHMFt8uHJQrYwQ
 XgwbOiqc82Wtfm8+vBh1JotiB+MeP6H/VsoOUr6I=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from darth.lan ([62.14.66.108]) by mail.gmx.com (mrgmx103
 [212.227.17.168]) with ESMTPSA (Nemesis) id 0M8MyE-1iGQpz0v3q-00vyRY; Sat, 03
 Aug 2019 17:44:13 +0200
Date: Sat, 3 Aug 2019 17:44:11 +0200
From: Sebastian Kemper <sebastian_ml@gmx.net>
To: Arnold Schulz <arnysch@gmx.net>
Message-ID: <20190803154411.GA2480@darth.lan>
References: <20190803151356.18733-1-arnysch@gmx.net>
 <20190803151356.18733-3-arnysch@gmx.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190803151356.18733-3-arnysch@gmx.net>
X-Provags-ID: V03:K1:0ye0wKkjd4jR7DvZRPJa3/F09AqVSbKTsQkyuYfduxyvIj7Ghw5
 O+QfgrI+vEeAHJ9PrP3PCm7N4BTy16v8NAtQu1nE6KsnG2YyYgkkfs9R6KU9K2KS0hMCDWp
 wnb6Ytra+scP9IspgKvOSRFSJ5ofpue/eF6t8xXogCKA0caoSIQnTtvrlvmMBp7MnHyajxV
 9CHpU2XW+bRDsWX9cc7Iw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:RnKX29jUUD8=:UZFviPb5w5xMMMYSJJqPuR
 WVh2j+pMwR9IGLqEXWKejj5l/3DnIBixFOCFf4xPjY+xQSmcKDMuPuxSKXPJ2yZIwab0OATpn
 mn+duXc08xUS0dP00cBBu23OC9aE+jOzA3HXpfjbFkopStshAki3UxQamGHi2l9RnfyccS0GU
 0Uoc9JWKfhKQ9gLPfaBRBFm7fZxMctp6knYLPUd6+INcvQPoTZIDtJOLxdyuAj2Gag1nlc7iM
 Ivm4R1w4AMqX/KhrDh1WXD3e6zEgOXnZ9uJQyuizdMPeC32u5uEJYwYHhFdFG99kyrAL3qjGm
 lQIUXHoIk4rsdV5yblmdxNHEtht2AT9lirnZv+/WsyrGQlTbNLIJte8erWMvLhlzqpLlNzO29
 WICFPBFMytQjNa2ldslZss/ppkVyp0qvpqcNIJAW0+N+kPtKKqSLZGTyI5hKOsnyjj9/eHSTd
 o07Ssn8eX0DrgL5Nr5VwoMuP7ZlTJNz17o8XhMeH2/XqJqiO5or68VbuqU+0B3Hj8lORkHhz5
 KjjeLknsXo7Tj0TEHH8m3sDtuD0PJi72pYsFcr6iOBHVWIBth23WTNrzH1PkQO+HP/HxAeD5+
 2EfstzJ5O0xufFUZmOfmAhOhBTJUEYkMBGuoeNvlXA0ZonS/M3LeTcautda9D4s3GkyCopMas
 iJsimyUpe9aFfwnKtMKYuzPjT8gEV1SHgRg7BalDEbw1jAQDJyvuamGthKGFR5SJJlROBTWT8
 P3i6Btmr9427j1S+HtIm1ZwPvVoRCv7AllGS3JiGALA9JCo5UInp0g9SjB0Pa4ShEfnyJOKdJ
 bL7JPyl2huh1V7Y/MWDEh9DwOSytqHHzQGh/2m99Ck/t10goP7/L9yl8g7ZKG9AkPGwQy20tM
 mZT7P2wG8eCiixXx5ElxW7jekUQXL/9Vqji9iCnZtSuor67kFiKsDrki9LtSw+GZ+ACmsv7ul
 2XIGD8f2UihNcrptN8tmXHkDa7Wf1LbmJShUyk1MmNd0WFigbCLBkts2otAzFVLpMpiHqBHLj
 itFqE5KagryAycUOKLQbP3TrCGWbWpL1Qqx9w3XL0RvxiJP4FxkYyVYfsJNRnR+lgdVwem+2L
 7uizsFP1EG4mfO3kVmx35fXhsgXnk/jZB3HevfLoOaqA5v32T4pWIiWSw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_084420_322990_86ABD93B 
X-CRM114-Status: GOOD (  13.60  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sebastian_ml[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [openwrt/telephony 2/2] asterisk16-chan-lantiq:
 Move menu item into the asterisk16 menu
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
Cc: openwrt-devel@lists.openwrt.org, jiri@slachta.eu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Sat, Aug 03, 2019 at 05:13:56PM +0200, Arnold Schulz wrote:
> This is now the same behaviour as used by the external asterisk
> packages asterisk-chan-dongle and asterisk-chan-sccp.
>
> Signed-off-by: Arnold Schulz <arnysch@gmx.net>
> ---
>  net/asterisk-16.x-chan-lantiq/Makefile | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/net/asterisk-16.x-chan-lantiq/Makefile b/net/asterisk-16.x-chan-lantiq/Makefile
> index 8210c07..55c1c35 100644
> --- a/net/asterisk-16.x-chan-lantiq/Makefile
> +++ b/net/asterisk-16.x-chan-lantiq/Makefile
> @@ -27,12 +27,12 @@ PKG_FLAGS:=nonshared
>  include $(INCLUDE_DIR)/package.mk
>
>  define Package/$(PKG_NAME)
> -  SUBMENU:=Telephony Lantiq
> +  SUBMENU:=Telephony
>    SECTION:=net
>    CATEGORY:=Network
>    TITLE:=Lantiq channel driver
>    URL:=https://github.com/kochstefan/asterisk_channel_lantiq
> -  DEPENDS:=+asterisk16 +kmod-ltq-vmmc
> +  DEPENDS:=asterisk16 +kmod-ltq-vmmc
>  endef

Hi Arnold,

Please see commit 8dd77211e025709bef36d4994fcf08ccc9107422. With your
patch chan-lantiq would again not be built by the buildbots.

I know that the extra submenu isn't nice. But we need the '+asterisk'
dep for the build bots to build the package. And when you stick
chan-lantiq into the Telephony submenu with its depend '+asterisk' then
menuconfig looks even stranger.

NACK from me.

Kind regards,
Seb

>
>  define Package/$(PKG_NAME)/description
> --
> 2.20.1

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
