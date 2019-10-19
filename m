Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D86FDD7C3
	for <lists+openwrt-devel@lfdr.de>; Sat, 19 Oct 2019 11:49:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mQ/panu2DhCh6fwksaOdoJ4TZwONSZwmaG+V8d2DVXA=; b=E3yCvNW6+zgzxZ
	M+q9yNhB/g91kUC357vd55dgLX4Q16RWb6lLpkNi6BeDa4fn4jX0HCRONm7nPeBv69g740OeArQJ3
	+1iRjiSpwUIswO4iocut2z4OZR/WOp2Aa3T8RxeXS8PhIqnlAfDkIPcm8pIB5qdmCW3ZccciB2sW2
	N+C8XePy8ZePEfXxOR4pntyFWcbxSIIf8AYXtHbf/U18rgw6IjiF/lVm5C2TYxNPqbshHV+e924f0
	ItFhXDEJ6LTF9E3pn3+LdK6EnFqjOYK9AFsjwfV4VTSqQ0F6GS45O7K6hLqfXdZaojWIs3sZk3PfO
	3jGtXyKVbAcVTRnBHtwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLlMQ-0007Er-Uu; Sat, 19 Oct 2019 09:49:22 +0000
Received: from mx2a.mailbox.org ([80.241.60.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLlMH-0007EH-Eq
 for openwrt-devel@lists.openwrt.org; Sat, 19 Oct 2019 09:49:15 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2a.mailbox.org (Postfix) with ESMTPS id 36241A358C;
 Sat, 19 Oct 2019 11:49:12 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter01.heinlein-hosting.de (spamfilter01.heinlein-hosting.de
 [80.241.56.115]) (amavisd-new, port 10030)
 with ESMTP id ilhfH5MSDRaH; Sat, 19 Oct 2019 11:49:08 +0200 (CEST)
To: Gerard Ryan <g.m0n3y.2503@gmail.com>, openwrt-devel@lists.openwrt.org
References: <20191013040315.9498-1-G.M0N3Y.2503@gmail.com>
From: Hauke Mehrtens <hauke@hauke-m.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hauke@hauke-m.de; keydata=
 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
Message-ID: <32ec2705-09fb-d0f1-00e7-ea880529d509@hauke-m.de>
Date: Sat, 19 Oct 2019 11:49:08 +0200
MIME-Version: 1.0
In-Reply-To: <20191013040315.9498-1-G.M0N3Y.2503@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191019_024913_807058_91A0EB70 
X-CRM114-Status: GOOD (  22.05  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.219 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] kmodloader: added -v and -a args to
 modeprobe
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 10/13/19 6:03 AM, Gerard Ryan wrote:
> This is primarily to satiate the usage by docker/libnetwork.
> Behaviour mirrors /tools/modprobe.c from https://git.kernel.org
> 
> Signed-off-by: Gerard Ryan <G.M0N3Y.2503@gmail.com>
> ---
> Compile tested: x86_x64, Hyper-V, OpenWrt Master
> Run tested: x86_x64, Hyper-V, OpenWrt Master
> 
> You can also find this patch on GitHub if you prefer.
> https://github.com/G-M0N3Y-2503/openwrt-ubox-mirror/tree/feature_extend_modprobe_options
> 
>  kmodloader.c | 76 +++++++++++++++++++++++++++++++---------------------
>  1 file changed, 46 insertions(+), 30 deletions(-)

Could you please split this into two patches, that would make it easier
to review these changes.

Hauke

> 
> diff --git a/kmodloader.c b/kmodloader.c
> index 422c895..a437509 100644
> --- a/kmodloader.c
> +++ b/kmodloader.c
> @@ -678,7 +678,9 @@ static int print_insmod_usage(void)
> 
>  static int print_modprobe_usage(void)
>  {
> -	ULOG_INFO("Usage:\n\tmodprobe [-q] filename\n");
> +	ULOG_INFO("Usage:\n"
> +			  "\tmodprobe [-q] [-v] filename\n"
> +			  "\tmodprobe -a [-q] [-v] filename [filename...]\n");
> 
>  	return -1;
>  }
> @@ -851,18 +853,26 @@ static int main_modinfo(int argc, char **argv)
> 
>  static int main_modprobe(int argc, char **argv)
>  {
> +	int exit_code = EXIT_SUCCESS;
>  	struct module_node *mn;
>  	struct module *m;
> -	char *name;
> -	char *mod = NULL;
> +	int load_fail;
> +	int log_level = LOG_WARNING;
>  	int opt;
>  	bool quiet = false;
> +	bool use_all = false;
> 
> -	while ((opt = getopt(argc, argv, "q")) != -1 ) {
> +	while ((opt = getopt(argc, argv, "aqv")) != -1 ) {
>  		switch (opt) {
> +			case 'a':
> +				use_all = true;
> +				break;
>  			case 'q': /* shhhh! */
>  				quiet = true;
>  				break;
> +			case 'v':
> +				log_level = LOG_DEBUG;
> +				break;
>  			default: /* '?' */
>  				return print_modprobe_usage();
>  				break;
> @@ -872,7 +882,8 @@ static int main_modprobe(int argc, char **argv)
>  	if (optind >= argc)
>  		return print_modprobe_usage(); /* expected module after options */
> 
> -	mod = argv[optind];
> +	/* after print_modprobe_usage() so it won't be filtered out */
> +	ulog_threshold(log_level);
> 
>  	if (scan_module_folders())
>  		return -1;
> @@ -880,40 +891,45 @@ static int main_modprobe(int argc, char **argv)
>  	if (scan_loaded_modules())
>  		return -1;
> 
> -	name = get_module_name(mod);
> -	m = find_module(name);
> -	if (m && m->state == LOADED) {
> -		if (!quiet)
> -			ULOG_ERR("%s is already loaded\n", name);
> -		return 0;
> -	} else if (!m) {
> -		if (!quiet)
> -			ULOG_ERR("failed to find a module named %s\n", name);
> -		return -1;
> -	} else {
> -		int fail;
> +	do {
> +		char *name;
> 
> -		m->state = PROBE;
> +		name = get_module_name(argv[optind]);
> +		m = find_module(name);
> 
> -		fail = load_modprobe(true);
> +		if (m && m->state == LOADED) {
> +			if (!quiet)
> +				ULOG_INFO("%s is already loaded\n", name);
> +		} else if (!m) {
> +			if (!quiet)
> +				ULOG_ERR("failed to find a module named %s\n", name);
> +			exit_code = EXIT_FAILURE;
> +		} else {
> +			m->state = PROBE;
> +		}
> 
> -		if (fail) {
> -			ULOG_ERR("%d module%s could not be probed\n",
> -			         fail, (fail == 1) ? ("") : ("s"));
> +		optind++;
> +	} while (use_all && optind < argc);
> 
> -			avl_for_each_element(&modules, mn, avl) {
> -				if (mn->is_alias)
> -					continue;
> -				m = mn->m;
> -				if ((m->state == PROBE) || m->error)
> -					ULOG_ERR("- %s\n", m->name);
> -			}
> +	load_fail = load_modprobe(true);
> +	if (load_fail) {
> +		ULOG_ERR("%d module%s could not be probed\n",
> +					load_fail, (load_fail == 1) ? ("") : ("s"));
> +
> +		avl_for_each_element(&modules, mn, avl) {
> +			if (mn->is_alias)
> +				continue;
> +			m = mn->m;
> +			if ((m->state == PROBE) || m->error)
> +				ULOG_ERR("- %s\n", m->name);
>  		}
> +
> +		exit_code = EXIT_FAILURE;
>  	}
> 
>  	free_modules();
> 
> -	return 0;
> +	return exit_code;
>  }
> 
>  static int main_loader(int argc, char **argv)
> --
> 2.17.1



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
