Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17431DF0F1
	for <lists+openwrt-devel@lfdr.de>; Mon, 21 Oct 2019 17:10:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ETz5nWosqP7ZZn0mpNpyVtnZeMtgyBqRUNxuqgbFU8U=; b=O7ehtcYS2ofRBlSwrjAKt+qvI
	A3Kzkmb/u7yGh4U6TOGgNShY/Tj+ciY3wUlShugAjXdKEHG7iHAogKqRKEdvAmlRWs63i6L3hCiUg
	bJGy4Y+bGjVvwnGBoEvBb+8HuXU1XBdZPbW9YXf9kz0UcTKtMj/QiR4XLnnvvbnZry03FpswS9ijZ
	FcdlZxTQb1QbskritpYMoGQKB+zy7pqcGEbZJp3/sk/V/76UL9TJpd/BvyK/nC+TyDaR6+IWX8M49
	CN34y2czmPH+tgxOU3KcT3DPIS7wv9EzhBoWYWMtWprVWsWMpiuV9yMcNsfTEPBhnBvCMTKKU0TWh
	vPbGP6rPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMZKF-0005Pa-Nh; Mon, 21 Oct 2019 15:10:27 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMZK6-0005Nd-Uj
 for openwrt-devel@lists.openwrt.org; Mon, 21 Oct 2019 15:10:20 +0000
Received: by mail-wr1-x433.google.com with SMTP id p4so14420036wrm.8
 for <openwrt-devel@lists.openwrt.org>; Mon, 21 Oct 2019 08:10:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ncentric-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=u/z6fkFAJtZwDHdLS1eErpjxjtzKaqwmIZZIwpsglfw=;
 b=K8fKVDDPj3kQzGZdvP+Xip1ZF3QRkt+/sBNmQBN8jVEsEYqaBeK7kDbIFfQvOyqo09
 eIa6aTI+P/E4LKCMrbpc8GV6gyp103fpKMpFzlkvxDsEGQfWykQWFWSEhsNoiN2JVpkb
 BLv+POec/paiBrAx3L6YxGCtGS7ZlzDGfWTBC7HVqZvmDcDzWe+LtyY2SHete9zVknkP
 2f0BJhhGFEPM9tYU6s6XZ7XXfErBEaHcPihJxnOD5vlTWhU51lelnWgUbf0jm5EjVWpv
 shpv2SA0ezLh9eG4XgbUzo1REpvKNdD48sPEeUB1h30s1jbgZ59rrX0YqTn5/5Nyipo5
 /7vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=u/z6fkFAJtZwDHdLS1eErpjxjtzKaqwmIZZIwpsglfw=;
 b=jQPhw7ojBS4FWObPwPn53/z4F4qALOH6WhvNE0cXo15NHhvU3qRjxiXK5WQewaRdGR
 8bafN3hxf0tyQwFrokpB1kANvpGvuVjmmDVlOk4uvckD4sgs/P7oyiv/aJ/vCtq1zNhl
 eTpa3j6yKnGXCuRCfF+SWgx5ZuEKg8uQ0qogDYXTnY8WzvWpW9nMElJudBkspt1qJF6k
 oSQRCVjrEBBrOEo3I0ZJPxBlB0ff28EuR4LaG58YBbuZSrcsEOeCGmljgThV3yHCL5At
 KB5bRpQQxzVHljlaeModgYGikiZ7s6OxNfsQpNma9BHxcF3yedyMenOrFWMdro7BrQ7y
 993Q==
X-Gm-Message-State: APjAAAXKPg/O6h1Jg6yG0Lclhq5uHylnEKfLT15nWxCpfZzfAV5If/Gu
 8LTDBk9ZFirvUxHWFihyak36+gd6G7A=
X-Google-Smtp-Source: APXvYqybubyV1qseoABq/JBwjPNgXwOqE8pXs+n9T4f2xNy8YYrDX/SCXMbpNQnoiSuqwW8IuwJRjg==
X-Received: by 2002:a5d:44c5:: with SMTP id z5mr19420907wrr.252.1571670616802; 
 Mon, 21 Oct 2019 08:10:16 -0700 (PDT)
Received: from [192.168.3.176] (d515300d8.static.telenet.be. [81.83.0.216])
 by smtp.gmail.com with ESMTPSA id p20sm10429759wmc.23.2019.10.21.08.10.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 21 Oct 2019 08:10:16 -0700 (PDT)
To: Martin Tippmann <martin.tippmann@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
References: <CABL_Pd-PQmWjkA9Zhtgv6VYq0DLbKu04JXwWgXywR8br_sffnA@mail.gmail.com>
From: Koen Vandeputte <koen.vandeputte@ncentric.com>
Message-ID: <7411452c-baa6-8e28-fe42-cf9b54a4acee@ncentric.com>
Date: Mon, 21 Oct 2019 17:10:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CABL_Pd-PQmWjkA9Zhtgv6VYq0DLbKu04JXwWgXywR8br_sffnA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_081019_015481_96CFC59B 
X-CRM114-Status: GOOD (  18.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:433 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] Hang on setting $PROMPT in master
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


On 21.10.19 17:04, Martin Tippmann wrote:
> We are using a shell-function to set the prompt based on return code -
> it works fine in 17.01 / 18.06 / 19.07, however in current master when
> the function is run the terminal/ssh session hangs.
>
> how to reproduce:
>
>
>
> <--- hang.sh:
> #!/bin/sh

You could add following line here to check where it hangs:

set -x

> prompt_set() {
>     face() {
>      local rc=$?
>      case "$rc" in
>         0) printf '%s' "$1" ;;
>         *) printf '%s' "$2" ; return $rc ;;
>        esac
>     }
>
>     local e='\[\e' # start escape-sequence
>     local c='\]' # close escape-sequence
>
>     local user='\u'
>     local wdir='\w' # workdir
>     local host='\h' # short form
>
>      local reset="${e}[0m${c}" # all attributes
>      local white="${e}[37m${c}"
>      local cyan="${e}[36m${c}"
>      local yellow="${e}[33;1m${c}" # bold
>      local green="${e}[32m${c}"
>      local red="${e}[31m${c}"
>
>      local ok="${green}:)"
>      local bad="${red}8("
>
>     # e.g. user@hostname:~ :)
>     export PS1="${cyan}${user}$white@${green}$host:${yellow}$wdir \$(
> face '$ok' '$bad' ) $reset"
> }
>
> prompt_set
> -->
>
> now source the file:
>
> . ./hang.sh
>
> shellcheck does not complain - I'm writing because I'm not sure wether
> this invalid sh that happened to work anyway or is this a
> bug/regression in ash?
>
> regards
> Martin
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
