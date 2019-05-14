Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 138141CCE3
	for <lists+openwrt-devel@lfdr.de>; Tue, 14 May 2019 18:25:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xpSi27VOhA28y6rvJcz6Dir+9dZRF/9l/eE1q8fzsSU=; b=BV9OvC0NSEAWru
	ti1yu7oVcZ0loJt7AxyHn0CeB0uL5Gr9snIGRhBmW5XODUYDKwczBowmno74ZjMw+5zw6oYyw3yAc
	/apD+x9Qfag/JNmebEhqoF9iPCIVy5kXRYQY6ce/uMFYXxgc7sI2DXwLICsaIlya803tbNejsgX6m
	16YzTQHw0CC08kVZK1h56bZ1trTotuac5R8XFCnRKG+6Y2Yt/Fp5yOvy+hxBXfCRrxGm9FLb3m8tw
	DprxGZA3G1oim3EgK8vq5UphIubq07LtjX+aNp+uo6I8zuJlLgOPaV+zFvBYsdoK97KX1x9/iNcQ3
	Spk5FU/4UxDi2XGhpKuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQaEb-000167-1D; Tue, 14 May 2019 16:24:57 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQaET-00014o-2n
 for openwrt-devel@lists.openwrt.org; Tue, 14 May 2019 16:24:51 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.91) (envelope-from <daniel@makrotopia.org>)
 id 1hQaEP-0007Y4-9E; Tue, 14 May 2019 18:24:45 +0200
Date: Tue, 14 May 2019 18:24:43 +0200
From: Daniel Golle <daniel@makrotopia.org>
To: Paul Spooren <mail@aparcar.org>
Message-ID: <20190514162441.GG7867@makrotopia.org>
References: <20190514155608.13021-1-mail@aparcar.org>
 <20190514155608.13021-2-mail@aparcar.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190514155608.13021-2-mail@aparcar.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_092449_124850_863407CC 
X-CRM114-Status: GOOD (  13.83  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH v2 2/2] procd: apply official kernel
 clang-format style
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

I don't think adding formatter-information into the code makes sense
at this stage, as this is meant for exeptions from an otherwise applied
style. Here, obviously clang-format defintions don't reflect the
current style.

I will show some examples:

On Tue, May 14, 2019 at 05:56:11PM +0200, Paul Spooren wrote:
> using clang-format-9

> @@ -209,35 +207,39 @@ static void rcrespawn(struct init_action *a)
>  	fork_worker(a);
>  }
>  
> -static struct init_handler handlers[] = {
> -	{
> -		.name = "sysinit",
> -		.cb = runrc,
> -	}, {
> -		.name = "shutdown",
> -		.cb = runrc,
> -	}, {
> -		.name = "askfirst",
> -		.cb = askfirst,
> -		.multi = 1,
> -	}, {
> -		.name = "askconsole",
> -		.cb = askconsole,
> -		.multi = 1,
> -	}, {
> -		.name = "respawn",
> -		.cb = rcrespawn,
> -		.multi = 1,
> -	}, {
> -		.name = "askconsolelate",
> -		.cb = askconsole,
> -		.multi = 1,
> -	}, {
> -		.name = "respawnlate",
> -		.cb = rcrespawn,
> -		.multi = 1,
> -	}
> -};
> +static struct init_handler handlers[] = { {
> +						  .name = "sysinit",
> +						  .cb = runrc,
> +					  },
> +					  {
> +						  .name = "shutdown",
> +						  .cb = runrc,
> +					  },
> +					  {
> +						  .name = "askfirst",
> +						  .cb = askfirst,
> +						  .multi = 1,
> +					  },
> +					  {
> +						  .name = "askconsole",
> +						  .cb = askconsole,
> +						  .multi = 1,
> +					  },
> +					  {
> +						  .name = "respawn",
> +						  .cb = rcrespawn,
> +						  .multi = 1,
> +					  },
> +					  {
> +						  .name = "askconsolelate",
> +						  .cb = askconsole,
> +						  .multi = 1,
> +					  },
> +					  {
> +						  .name = "respawnlate",
> +						  .cb = rcrespawn,
> +						  .multi = 1,
> +					  } };

Now this is a bit annoying (unnessecarily high indention level) but
still baerable.

> diff --git a/preload.h b/preload.h
> index 5e663ac..5a09db0 100644
> --- a/preload.h
> +++ b/preload.h
> @@ -18,39 +18,24 @@
>  #endif
>  
>  #ifndef attribute_unused
> -#define attribute_unused __attribute__ ((unused))
> +#define attribute_unused __attribute__((unused))
>  #endif
>  typedef int (*main_t)(int, char **, char **);
>  
>  typedef int (*start_main_t)(main_t main, int, char *__unbounded *__unbounded,
> -			ElfW(auxv_t) *,
> -			__typeof (main),
> -			void (*fini) (void),
> -			void (*rtld_fini) (void),
> -			void *__unbounded stack_end);
> -
> -int __libc_start_main(main_t main,
> -			int argc,
> -			char **argv,
> -			ElfW(auxv_t) *auxvec,
> -			__typeof (main) init,
> -			void (*fini) (void),
> -			void (*rtld_fini) (void),
> -			void *stack_end);
> -
> -
> -typedef void (*uClibc_main)(main_t main,
> -			int argc,
> -			char **argv,
> -			void (*app_init)(void),
> -			void (*app_fini)(void),
> -			void (*rtld_fini)(void),
> -			void *stack_end attribute_unused);
> -
> -void __uClibc_main(main_t main,
> -			int argc,
> -			char **argv,
> -			void (*app_init)(void),
> -			void (*app_fini)(void),
> -			void (*rtld_fini)(void),
> -			void *stack_end attribute_unused);
> +			    ElfW(auxv_t) *, __typeof(main), void (*fini)(void),
> +			    void (*rtld_fini)(void),
> +			    void *__unbounded stack_end);
> +
> +int __libc_start_main(main_t main, int argc, char **argv, ElfW(auxv_t) * auxvec,
> +		      __typeof(main) init, void (*fini)(void),
> +		      void (*rtld_fini)(void), void *stack_end);
> +
> +typedef void (*uClibc_main)(main_t main, int argc, char **argv,
> +			    void (*app_init)(void), void (*app_fini)(void),
> +			    void (*rtld_fini)(void),
> +			    void *stack_end attribute_unused);
> +
> +void __uClibc_main(main_t main, int argc, char **argv, void (*app_init)(void),
> +		   void (*app_fini)(void), void (*rtld_fini)(void),
> +		   void *stack_end attribute_unused);

Having each parameter in a single line may be desirable for
functions having many parameters and, like here, when defining
function-pointer types.

> diff --git a/signal.c b/signal.c
> index 9974153..df2254c 100644
> --- a/signal.c
> +++ b/signal.c
> @@ -27,7 +27,7 @@ static void do_reboot(void)
>  	sleep(2);
>  	reboot(RB_AUTOBOOT);
>  	while (1)
> -	;
> +		;
>  }
>  
>  static void signal_shutdown(int signal, siginfo_t *siginfo, void *data)
> @@ -36,7 +36,7 @@ static void signal_shutdown(int signal, siginfo_t *siginfo, void *data)
>  	char *msg = NULL;
>  
>  #ifndef DISABLE_INIT
> -	switch(signal) {
> +	switch (signal) {
>  	case SIGINT:
>  	case SIGTERM:
>  		event = RB_AUTOBOOT;
> @@ -56,10 +56,8 @@ static void signal_shutdown(int signal, siginfo_t *siginfo, void *data)
>  		procd_shutdown(event);
>  }
>  
> -struct sigaction sa_shutdown = {
> -	.sa_sigaction = signal_shutdown,
> -	.sa_flags = SA_SIGINFO
> -};
> +struct sigaction sa_shutdown = { .sa_sigaction = signal_shutdown,
> +				 .sa_flags = SA_SIGINFO };

This is much uglier than it was.

>  
>  static void signal_crash(int signal, siginfo_t *siginfo, void *data)
>  {
> @@ -67,20 +65,16 @@ static void signal_crash(int signal, siginfo_t *siginfo, void *data)
>  	do_reboot();
>  }
>  
> -struct sigaction sa_crash = {
> -	.sa_sigaction = signal_crash,
> -	.sa_flags = SA_SIGINFO
> -};
> +struct sigaction sa_crash = { .sa_sigaction = signal_crash,
> +			      .sa_flags = SA_SIGINFO };

Same here.

>  
>  static void signal_dummy(int signal, siginfo_t *siginfo, void *data)
>  {
>  	ERROR("Got unexpected signal %d\n", signal);
>  }
>  
> -struct sigaction sa_dummy = {
> -	.sa_sigaction = signal_dummy,
> -	.sa_flags = SA_SIGINFO
> -};
> +struct sigaction sa_dummy = { .sa_sigaction = signal_dummy,
> +			      .sa_flags = SA_SIGINFO };

And here.

> -enum {
> -	STATE_NONE = 0,
> -	STATE_EARLY,
> -	STATE_UBUS,
> -	STATE_INIT,
> -	STATE_RUNNING,
> -	STATE_SHUTDOWN,
> -	STATE_HALT,
> -	__STATE_MAX,
> +enum { STATE_NONE = 0,
> +       STATE_EARLY,
> +       STATE_UBUS,
> +       STATE_INIT,
> +       STATE_RUNNING,
> +       STATE_SHUTDOWN,
> +       STATE_HALT,
> +       __STATE_MAX,
>  };

Here it replaces tabs with spaces...


>  static int system_board(struct ubus_context *ctx, struct ubus_object *obj,
> -                 struct ubus_request_data *req, const char *method,
> -                 struct blob_attr *msg)
> +			struct ubus_request_data *req, const char *method,
> +			struct blob_attr *msg)

...and here it does the opposite.



Maybe checkpatch.pl or existing kernel-style check tools would be a
better reference than the relatively young and only recently popular
clang-format?

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
