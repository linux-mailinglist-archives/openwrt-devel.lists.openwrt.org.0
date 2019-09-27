Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F6D7C0691
	for <lists+openwrt-devel@lfdr.de>; Fri, 27 Sep 2019 15:44:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VHagU6KjyO78YedeuLQkdp6qAC+6ERjFH5Rw250bLXY=; b=dSJOC5h6TIlqjT
	MbnNYPiF38Pf5IENNKUUUVdnRhA4MyWZk1stuoNyvAvZdYYtRRnBfUaxa7ieFn892+qnI8lGNOUC7
	NI0Wv94VOX/DaBslBsoK/WJ7a62ZjQU4/DMHr3b5sxeuoqjhic8wqvwAD2/qZWONYoFl9qh+1npIx
	38gy7OngKEG/TYxCr9gf9WkP1i3Akbn8yuxbgB4UoSjmrQIVplYfh7Pd0MBayPn1Lo2cFI4BZ28M6
	MZ23WFtOI3xF43QuicXLpbKc0HRcP65Eqo3lnwGwB81kahMW6z5HmNARKa0MhWuugKsiSxhmhYTSy
	jAw+7mPhJIIsCjHxTpKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDqXj-000834-JQ; Fri, 27 Sep 2019 13:44:19 +0000
Received: from mail-qk1-x731.google.com ([2607:f8b0:4864:20::731])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDqXa-00082h-Qz
 for openwrt-devel@lists.openwrt.org; Fri, 27 Sep 2019 13:44:12 +0000
Received: by mail-qk1-x731.google.com with SMTP id u186so1970893qkc.5
 for <openwrt-devel@lists.openwrt.org>; Fri, 27 Sep 2019 06:44:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Lv5jBuEqae3zQRDd8zrlgJEFk/AIBODq3dBOX37BVHs=;
 b=bqW3/2gVKvIzOdZljzor0Zlo9gm+MkDJA6R2aDhSvFtNqsculXHXv6PAZBjTa4hEyS
 G5VN/OjASEcDJn0BA8unEEQfRU/uQxiE3ehbCXrr5TgjA9sxdge23WH7qcN4Lb3dEU4K
 zGmqsvY8+VDM7jR8qS77X61DTyVDQDxGycrQK9j2VAcrci5UrGJMmpPHk5/SPyk02bXF
 tXpE4aH78tc/fdpLaH206eEzZZ/xESHRLLH630y4sIronYqxhUuMs6vC9qybkIOz4eld
 8k1vvrgptZxXbdOoKdRhl06/Eoj12VxupgAzSIs+xC9kFGdB+S8v0pkKOulKBiXvzeeF
 xU6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Lv5jBuEqae3zQRDd8zrlgJEFk/AIBODq3dBOX37BVHs=;
 b=RgumBnbQ+HWceHnYLUoxijE6bM7ZgHGDESPlZABztCXT918dteY5rF+Uu9I4wBM0bX
 wsDcoXuxpQ831lW5ZsUwidlY9PCbv3uMhbh8JVShcgn/dMYmS6eNo55JCvQjpWJb7dRJ
 0Ual92D6ITjwiCtcy0XZQI15w+8Guyj3BeBbMww1v41sFFaNtb+lhLw9TWP3kf+HV9Ty
 nL55qPIYopEZR1tPwDR6qAOIP8/5g7mzRRnTFtNBIbqaRHcW8i56s9JoMZaMAFLXx7qc
 /28Eu4QtX95Wu8KgJGoUD4Ojv1aSRRxtIyw1MxXO9ryjtnJSGck5uDxIU9qqeHcWIbat
 epUg==
X-Gm-Message-State: APjAAAWb+9/9MhbxKE8Wdw5iStQdsynrIIccWHFEUrVLfE3BMRpeoRDH
 ly5zahyKbt0DRk66znc3cw/oZ3ff4WA9kRfH/dNPvaRz
X-Google-Smtp-Source: APXvYqxvCvfT2Ao/am1D7UbOZBJdIdje41W9q/onjPFVB88PE8sN8Hzsq8eJG7M0DKr7Xgp/6LSnKPLWsMOjeDS3sXc=
X-Received: by 2002:a37:9544:: with SMTP id x65mr4781065qkd.100.1569591848940; 
 Fri, 27 Sep 2019 06:44:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190927110519.GA25228@imp.flyn.org>
In-Reply-To: <20190927110519.GA25228@imp.flyn.org>
From: Eneas Queiroz <cotequeiroz@gmail.com>
Date: Fri, 27 Sep 2019 10:43:58 -0300
Message-ID: <CAPxccB1QHHRfNd1konTCg+oMuOQDAQOqh_MxiUp=Z_BBYvqwxg@mail.gmail.com>
To: "W. Michael Petullo" <mike@flyn.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_064410_896699_4AA4EB51 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cotequeiroz[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:731 listed in]
 [list.dnswl.org]
Subject: Re: [OpenWrt-Devel] Wait on syslog-ng
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Fri, Sep 27, 2019 at 8:05 AM W. Michael Petullo <mike@flyn.org> wrote:
>
> A daemon I wrote for OpenWrt depends on a running syslogd. I use
> syslog-ng, and I have noticed that its init script completes before the
> daemon begins to listen on /dev/log. This causes my daemon to terminate
> if it starts quickly after syslog-ng.
>
> There are a few obvious solutions:
>
>         (1) My daemon could sleep and try again if its connection to
>         syslogd fails.
>
>         (2) My daemon's init script could sleep for one second before
>         running the daemon.
>
>         (3) Syslog-ng's init script could sleep for one second after
>         executing syslog-ng and before exiting.
>
> (3) seems the most universal, but all of these feel a little kludgy due
> to the reliance on a timeout. I say this becasue you cannot precisely
> predict what the timeout value should be (in practice a second or so
> seems to suffice).
>
> Does the init system provide a more general way to solve this problem?
> The START=n statements seem to impose only the ordering of init script
> execution and have no bearing on whether the services the scripts run
> are ready. Do I have this right?
>
> I did see sleep in a few other scripts such as network.

How about something like this?

#!/bin/sh

exitservice() {
  if [ -n "$!" ]; then
    echo Killing timout
    kill $! 2> /dev/null
    wait $! 2> /dev/null
  fi
}

timeout() {
  sleep 10
  echo 'ERROR: socket not open.  Is syslog running?' >&2
  kill $$
  exit 1
}

trap exitservice EXIT
timeout &
while ! grep -q /dev/log /proc/net/unix; do
  sleep 1
done
exit 0

Cheers,

Eneas

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
