Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE0F7FECC6
	for <lists+openwrt-devel@lfdr.de>; Sat, 16 Nov 2019 15:59:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yVIvWFa6hlAIVUn/AF78xZrVUgrLQqYDzVw9tATHPh4=; b=EdZGwDIHZA/slEhgIGjI8qF2X
	aY15pBYFz6Y9leqXfBDCLQIK5EMdAGnYYUxviqlhM8KMruBN2+TskT8OYeAcp5PCOWHSROi7IpuJF
	TIjuqDk6mp9gMwCDjK5WaGYoin60tLzft0teXc5neoYEBIU8LeXlY4Equzu2jL90AVzJWw99ycZe5
	D/qY4kE6AgtXC2l7kmcb9jdMxSZKZT+CB1RVdnr/u2zGZofDSUYCjBP51gPBDeOqVNaizWAGjEQ2c
	G2jFhLDL2Pb4tvDgpq/TVclAz6+v/iXuikOE7PayCu+nESfRoTgLiiXCbPbUe+97ZQkqm4ecMDnfI
	YDz49dtTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVzXy-0007lc-2n; Sat, 16 Nov 2019 14:59:34 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVzXm-0007lI-1f
 for openwrt-devel@lists.openwrt.org; Sat, 16 Nov 2019 14:59:23 +0000
Received: by mail-lj1-x243.google.com with SMTP id g3so13790508ljl.11
 for <openwrt-devel@lists.openwrt.org>; Sat, 16 Nov 2019 06:59:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=NpWySyJML20QmSC0hfFDAlPpx7edaxS5YjwHihX/WBI=;
 b=YX2d0+v/3cOnIMerAP4+0USER4Jl8L97YXpvs3rKxmiT1s+Rt9dnpnaT7jCP7Mx/az
 uVxW9f1BPXK7rkoO5X3RHeqGIWywaL71VN4dSy4zZ02/InL+0gd/DSvOc6EW6yBYDl2s
 q11IPlwjQYCs099Yzm3HHIZm4GCiDnA5FYaIVKsJzU7VL65uL518pn5rXI8B4jluDCly
 n2YbQlVDT91u6EOg3Z+9OCU/Uiog375zjEIbiYgh/xAD88ySfQSV+Lb7iYXZB3LEYPJX
 J5688uPOicuq5TnralzTcy7LxDAokhY+PZPA5IYg4ywMhtssyEDad+Jch9yCkUL9FptB
 Ga8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=NpWySyJML20QmSC0hfFDAlPpx7edaxS5YjwHihX/WBI=;
 b=STbv7f4/4afkvFARD1y32QhoYn53Ppo+vuYuMJ4xZDlAfcB0qRTjszEqXHQODTN/YW
 pmWAl4KpM0NdPA1RhULNN2Rc4iETFrA77PZET4GZNOM2T5yL18CGu3RLLxSfmlEjjyiq
 frWouL4h4yOQGGWKDtN6Su1+Kbcprv9QhuyIC/whv8n3kdz2O5glUKiSfRjBsExjlzOf
 B6Wi1NW+gLRhciAlgr4/cPGorWY7lTtVBqOUa+8wzcgppulbh4T9+BWobEfEGJRmFUVL
 L299oqZQrEA1ZdJ+PQSoTd8+fMu6WwpvZk7hU4O9tNkGgtSGfUy+ZPa2+IDak/jCm1iG
 AV7Q==
X-Gm-Message-State: APjAAAVaLc2rGv/zsjwtcakoI9bvRNLepKMxYY9kiDWTQzwfNG0czBka
 I1Y1WDvp12BmR7FIlBqFwFGl8/20
X-Google-Smtp-Source: APXvYqzNnFfLz8Mp4WmOSD9E33373Gd6e5Cww4g/iM/WwzPNYVBowqZV/QRRF6TyWtS4mz0BFtxNyA==
X-Received: by 2002:a2e:3311:: with SMTP id d17mr15292380ljc.237.1573916359998; 
 Sat, 16 Nov 2019 06:59:19 -0800 (PST)
Received: from [31.11.183.129] (031011183129.warszawa.vectranet.pl.
 [31.11.183.129])
 by smtp.gmail.com with ESMTPSA id d17sm6597034lja.27.2019.11.16.06.59.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 16 Nov 2019 06:59:19 -0800 (PST)
To: Zefir Kurtisi <zefir.kurtisi@neratec.com>, openwrt-devel@lists.openwrt.org
References: <20191107115408.13013-1-zefir.kurtisi@neratec.com>
From: Piotr Dymacz <pepe2k@gmail.com>
Message-ID: <745e9302-3688-7f09-1012-14cb5b22ed08@gmail.com>
Date: Sat, 16 Nov 2019 15:59:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191107115408.13013-1-zefir.kurtisi@neratec.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_065922_116314_1C55C80B 
X-CRM114-Status: GOOD (  27.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pepe2k[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] uqmi: add timeout parameter
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
Cc: bjorn@mork.no, malaakso@elisanet.fi
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Zefir,

On 07.11.2019 12:54, Zefir Kurtisi wrote:
> Working with Quectel EM12 LTE-module, we observe
> regular stalls of the QMI interface which cause
> a request issued by uqmi to hang forever.
> 
> Most reproducibly this happens after the device
> has been power-cycled and left untouched for a
> while (~ 60s+). Most of the time the very first
> QMI request fails, since it is not responded by
> the module. This is the strace from such a run
> (from --get-pin-status):
> 
>   open("/dev/cdc-wdm0", O_RDWR|O_EXCL|O_NOCTTY|O_NONBLOCK|O_LARGEFILE) = 6
>   fcntl64(6, F_GETFL)                     = 0x10802 (flags O_RDWR|O_NONBLOCK|O_LARGEFILE)
>   fcntl64(6, F_SETFL, O_RDWR|O_NONBLOCK|O_LARGEFILE) = 0
>   epoll_ctl(3, EPOLL_CTL_ADD, 6, {EPOLLIN|EPOLLRDHUP|EPOLLET, {u32=268567076, u64=1153486808202346496}}) = 0
>   write(6, "\1\17\0\0\0\0\0\1\"\0\4\0\1\1\0\2", 16) = 16
>   clock_gettime(CLOCK_MONOTONIC, {tv_sec=95, tv_nsec=583444789}) = 0
>   clock_gettime(CLOCK_MONOTONIC, {tv_sec=95, tv_nsec=583770264}) = 0
>   epoll_pwait(3,
>   [ hang forever ]
> 
> After killing the blocked uqmi process, the next
> request works as expected.
> 
> We don't know whether this is a device FW issue
> (we use the latest EM12GPAR01A15M4G) or whether
> the device enters some undocumented power-save
> mode after idling for some time.

Could you share this firmware version, is that a generic Quectel or a 
customized one? I would like to reproduce and debug the problem but the 
EM12 I have here has 'EM12GPAR01A_11_M4G'.

Also, what platform do you use this modem with?

-- 
Cheers,
Piotr

> This patch extends uqmi with a timeout option
> (-t, --timeout <ms>) which if set terminates a
> request after the given amount of msecs. In
> our usecase it provides a means of preventing
> infinitively stuck QMI requests. Since we
> observe the issue only for the very first
> request after cold-boot, we use a dummy access
> early in qmi.sh, e.g.
>    uqmi -d /dev/cdc-wdm0 --get-pin-status -t 3000 >/dev/null 2>&1
> 
> This ensures the QMI interface is un-stuck in
> case it entered the stall-state observed. The
> change is intentionally not included in this
> commit, since you don't need it if it works
> for you.
> 
> 
> Signed-off-by: Zefir Kurtisi <zefir.kurtisi@neratec.com>
> ---
>   main.c | 15 ++++++++++++++-
>   1 file changed, 14 insertions(+), 1 deletion(-)
> 
> diff --git a/main.c b/main.c
> index 9b43e5e..aa4634c 100644
> --- a/main.c
> +++ b/main.c
> @@ -44,6 +44,7 @@ static const struct option uqmi_getopt[] = {
>   	{ "keep-client-id", required_argument, NULL, 'k' },
>   	{ "release-client-id", required_argument, NULL, 'r' },
>   	{ "mbim",  no_argument, NULL, 'm' },
> +	{ "timeout", required_argument, NULL, 't' },
>   	{ NULL, 0, NULL, 0 }
>   };
>   #undef __uqmi_command
> @@ -57,6 +58,7 @@ static int usage(const char *progname)
>   		"  --keep-client-id <name>:          Keep Client ID for service <name>\n"
>   		"  --release-client-id <name>:       Release Client ID after exiting\n"
>   		"  --mbim, -m                        NAME is an MBIM device with EXT_QMUX support\n"
> +		"  --timeout, -t                     response timeout in msecs\n"
>   		"\n"
>   		"Services:                           dms, nas, pds, wds, wms\n"
>   		"\n"
> @@ -103,6 +105,14 @@ static void handle_exit_signal(int signal)
>   	uloop_end();
>   }
>   
> +static void _request_timeout_handler(struct uloop_timeout *timeout)
> +{
> +	fprintf(stderr, "Request timed out\n");
> +	handle_exit_signal(0);
> +}
> +
> +struct uloop_timeout request_timeout = { .cb = _request_timeout_handler, };
> +
>   int main(int argc, char **argv)
>   {
>   	static struct qmi_dev dev;
> @@ -112,7 +122,7 @@ int main(int argc, char **argv)
>   	signal(SIGINT, handle_exit_signal);
>   	signal(SIGTERM, handle_exit_signal);
>   
> -	while ((ch = getopt_long(argc, argv, "d:k:sm", uqmi_getopt, NULL)) != -1) {
> +	while ((ch = getopt_long(argc, argv, "d:k:smt:", uqmi_getopt, NULL)) != -1) {
>   		int cmd_opt = CMD_OPT(ch);
>   
>   		if (ch < 0 && cmd_opt >= 0 && cmd_opt < __UQMI_COMMAND_LAST) {
> @@ -136,6 +146,9 @@ int main(int argc, char **argv)
>   		case 'm':
>   			dev.is_mbim = true;
>   			break;
> +		case 't':
> +			uloop_timeout_set(&request_timeout, atol(optarg));
> +			break;
>   		default:
>   			return usage(argv[0]);
>   		}
> 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
