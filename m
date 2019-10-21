Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80841DEAA8
	for <lists+openwrt-devel@lfdr.de>; Mon, 21 Oct 2019 13:18:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=b3X2BTPf8fbtM4E4fesHxFXiM5ws5pSfBEhb8OruPGM=; b=HtoKh6CRsn0kKwK+xeoTCFbZT
	5f8TFSxhYlugcHumi4znIkHEnR5/bfDuT/WbcXqvvl/eqhQEvO4TnFdBbLN4JNY5hbDSzT8+ZShMa
	pHCjBYM6MXX9a3w2HedMHw1Wu6wGM87XI7ShC4oocUyaP1sIg6WVhruh7U6WZcxNjY+n632x7sesL
	tfiyXSdT16c3CHpLxKcp5NK2gBoOooZZ/AxmMg36qEbTfmUMwvurB7VjM+V9MOIpPwI4IjZ2PRny/
	ks4SYiI97G5kUjCvx/oSnj1/6PScTzjo6PXOuYMLBSncQX4gQWpiRNBcU9qXk/ftTXVqhwcsySRUw
	QdU4oxSRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMVhJ-0003cR-8e; Mon, 21 Oct 2019 11:18:01 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMVh7-0003bU-8v
 for openwrt-devel@lists.openwrt.org; Mon, 21 Oct 2019 11:17:51 +0000
Received: from p5dcfba1e.dip0.t-ipconnect.de ([93.207.186.30]
 helo=[10.255.231.27])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1iMVh3-0000vU-Ed; Mon, 21 Oct 2019 13:17:45 +0200
To: Gerard Ryan <g.m0n3y.2503@gmail.com>, openwrt-devel@lists.openwrt.org
References: <20191020060112.25323-1-G.M0N3Y.2503@gmail.com>
 <20191020060112.25323-2-G.M0N3Y.2503@gmail.com>
From: John Crispin <john@phrozen.org>
Message-ID: <7339f8a3-d31e-5253-49b0-cbf15755dc55@phrozen.org>
Date: Mon, 21 Oct 2019 13:17:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20191020060112.25323-2-G.M0N3Y.2503@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_041749_469645_F3543F4C 
X-CRM114-Status: GOOD (  22.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [OpenWrt-Devel V2 2/2] kmodloader: added -a arg
 to modeprobe
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

On 20/10/2019 08:01, Gerard Ryan wrote:
> This is primarily to satiate the usage by docker/libnetwork.
> Behaviour mirrors /tools/modprobe.c from https://git.kernel.org
Hi,
you should describe here what the -a flag actually does.
I have manually fixed it for 1/2 but please rework 2/2 and send that one
	John

> 
> Signed-off-by: Gerard Ryan <G.M0N3Y.2503@gmail.com>
> ---
> Compile tested: x86_x64, Hyper-V, OpenWrt Master
> Run tested: x86_x64, Hyper-V, OpenWrt Master
> 
> You can also find this patch on GitHub if you prefer.
> https://github.com/G-M0N3Y-2503/openwrt-ubox-mirror/tree/feature_extend_modprobe_options
> 
> Since https://patchwork.ozlabs.org/patch/1175792/ I adjusted some whitespace to indent more consistently and split the patch by the args they implement.
> 
>   kmodloader.c | 68 +++++++++++++++++++++++++++++-----------------------
>   1 file changed, 38 insertions(+), 30 deletions(-)
> 
> diff --git a/kmodloader.c b/kmodloader.c
> index 07b6700..838bc8c 100644
> --- a/kmodloader.c
> +++ b/kmodloader.c
> @@ -681,6 +681,7 @@ static int print_modprobe_usage(void)
>   	ULOG_INFO(
>   		"Usage:\n"
>   		"\tmodprobe [-q] [-v] filename\n"
> +		"\tmodprobe -a [-q] [-v] filename [filename...]\n"
>   	);
> 
>   	return -1;
> @@ -854,16 +855,20 @@ static int main_modinfo(int argc, char **argv)
> 
>   static int main_modprobe(int argc, char **argv)
>   {
> +	int exit_code = EXIT_SUCCESS;
>   	struct module_node *mn;
>   	struct module *m;
> -	char *name;
> -	char *mod = NULL;
> +	int load_fail;
>   	int log_level = LOG_WARNING;
>   	int opt;
>   	bool quiet = false;
> +	bool use_all = false;
> 
> -	while ((opt = getopt(argc, argv, "qv")) != -1 ) {
> +	while ((opt = getopt(argc, argv, "aqv")) != -1 ) {
>   		switch (opt) {
> +			case 'a':
> +				use_all = true;
> +				break;
>   			case 'q': /* shhhh! */
>   				quiet = true;
>   				break;
> @@ -882,48 +887,51 @@ static int main_modprobe(int argc, char **argv)
>   	/* after print_modprobe_usage() so it won't be filtered out */
>   	ulog_threshold(log_level);
> 
> -	mod = argv[optind];
> -
>   	if (scan_module_folders())
>   		return -1;
> 
>   	if (scan_loaded_modules())
>   		return -1;
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
> +		         load_fail, (load_fail == 1) ? ("") : ("s"));
> +
> +		avl_for_each_element(&modules, mn, avl) {
> +			if (mn->is_alias)
> +				continue;
> +			m = mn->m;
> +			if ((m->state == PROBE) || m->error)
> +				ULOG_ERR("- %s\n", m->name);
>   		}
> +
> +		exit_code = EXIT_FAILURE;
>   	}
> 
>   	free_modules();
> 
> -	return 0;
> +	return exit_code;
>   }
> 
>   static int main_loader(int argc, char **argv)
> --
> 2.17.1
> 
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
