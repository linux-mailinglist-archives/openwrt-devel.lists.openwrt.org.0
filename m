Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 444F21B16CE
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Apr 2020 22:22:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:Date:In-Reply-To:References:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LOGpba2IL/bOQHdeUGU1Vj0aodyb2mSfVfHw4y9IeoY=; b=K/nvbJxjPQj4dEmtCME1nvM1R
	Tu7eNFbpkxVWGUEU3im8moPQ2MlJqOjsU7mFkHpnuwbYP4XOhZ3gsrqoJ36lLPbCS77JKAGO7yGKD
	qctOwrYMYwovBZHXaIDt1Dft+TMonIY8QbaI9j9Q7jt2C+/iKylHnSYr5Un+evgjOzc8OmOhwnI66
	L4/LFN56031c9pIGP7uLY/59y/TRApTQSNosk7gtBRbv+xMhyF0k3dOIXDg+230LCXFrMDJEEzUeq
	hbWIPuAOH1nxY4YQ2wr3YYPKLhoKOskTaC2rZI+xy5AglS9ww5VhjDgvQNj9zQQuvbfoNR46lkbog
	eh29MiE1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQcwK-00065m-8u; Mon, 20 Apr 2020 20:22:48 +0000
References: <02b901d6174b$d6a6f3e0$83f4dba0$@adrianschmutzler.de>
In-Reply-To: <02b901d6174b$d6a6f3e0$83f4dba0$@adrianschmutzler.de>
Date: Mon, 20 Apr 2020 22:22:24 +0200
To: mail@adrianschmutzler.de
MIME-Version: 1.0
Message-ID: <mailman.5234.1587414160.2542.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Martin Blumenstingl via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] Port labels for DSA targets/devices
Content-Type: multipart/mixed; boundary="===============3308761263751994792=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============3308761263751994792==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============3308761263751994792==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQcwA-00065O-DC
	for openwrt-devel@lists.openwrt.org; Mon, 20 Apr 2020 20:22:40 +0000
Received: by mail-ej1-x630.google.com with SMTP id n4so9026060ejs.11
        for <openwrt-devel@lists.openwrt.org>; Mon, 20 Apr 2020 13:22:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zRYalvLG4SdWbI11+QKZiO468r38uW97IeVfz3UEUa8=;
        b=KO3ETc/kfsDQcto8mjq0pIuGORWElV28IugPAuKvpNSJw/4MEeq9rC+HuPVcjuRPbH
         JbG6ymq66cFx6riWS0fgLMt7uNporEtImeZnzmN2dZ+Dqvte5S0PWB7xKJXyfB/JAiTv
         0+cJE0YZ7nX8wRjeZ80cJWhq5mWBeMFY0g9Uvn7HzF90G9Cho9GGuskC3Is56oMTvUwm
         Zm3rxsMoIIsWOiDIRXsGWIvaFe7WgUH1oIUCARlmQdz4UtCQSP2RTrtvMhn5etK/uMUW
         mr4ODP1njk8LB9iT9CNgSIgAlkif+EAflOhFUyolGoVFhqextFGNTHGGOf22uCHxjmSR
         wasA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zRYalvLG4SdWbI11+QKZiO468r38uW97IeVfz3UEUa8=;
        b=Y9kHiLuFbY3iDxD76eaULkFa08OpRa/T7GFI8sykXiEL4sGc6vNKRQ1n8WAqaQJIOX
         zD8YhLdJWPIXoWLGImvEJmTDYVZMm3k576RHmheHZxJt/g4GcrEZ9MzTaO4lLWNqAcV5
         0HDDInET/anpwQ5LEoIR5NlV7ag5oWRmsoj4tguCcxS6V5UXdcvZXhKg2Xtto7DGTqGO
         TWS36R3se4tfG0X7WCAs5Aa6aRMiWboOzSXDvm87H6r5agb4hO0X3a87V8+NG8hJH787
         ex7fq3f9np7jnWNU+4ENFDcFGvNmCzlHpcoOcoqmcL0xBMVjGhs8zZlE3z6ZbCdZElay
         t8AA==
X-Gm-Message-State: AGi0PuZIGMVB04hN1VmiBuN8SIRediSn2Obn94UPQpNHQzmTeby7JzXB
	7j4TiIqiA/bKOXNgwh3TbKhaWZEcs5XkEAF6rA4=
X-Google-Smtp-Source: APiQypLeTTPUYFGF8JGFncbjX6PkCW6h/nJ0XSebKW+A0dBA82m4j1i0JVP7VXWn66WTrxUIcZg7mLzThaM0w4yt9ow=
X-Received: by 2002:a17:906:17c1:: with SMTP id u1mr990152eje.47.1587414155267;
 Mon, 20 Apr 2020 13:22:35 -0700 (PDT)
MIME-Version: 1.0
References: <02b901d6174b$d6a6f3e0$83f4dba0$@adrianschmutzler.de>
In-Reply-To: <02b901d6174b$d6a6f3e0$83f4dba0$@adrianschmutzler.de>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 20 Apr 2020 22:22:24 +0200
Message-ID: <CAFBinCBBSU-Q7PgwjkctcosS4H5+ndnK0umb30RrR1gfN-h3gw@mail.gmail.com>
Subject: Re: [OpenWrt-Devel] Port labels for DSA targets/devices
To: mail@adrianschmutzler.de
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_132238_470992_451366DE 
X-CRM114-Status: UNSURE (   7.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [martin.blumenstingl[at]googlemail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid

Hi Adrian,

(sorry for being slightly off-topic)

On Mon, Apr 20, 2020 at 9:42 PM <mail@adrianschmutzler.de> wrote:
> recently, ramips/mt7621 has switched to DSA and mvebu [1] and kirkwood [2] are waiting for it.
are these targets using any migration scripts?
my understanding is that a migration script (or rather the lack
thereof) is preventing us to switch to DSA for the Lantiq VRX200
target on 5.4
however, if a migration script is not mandatory then I might as well
consider switching 5.4 to DSA so there will be one release where many
targets switch from swconfig to DSA


Martin


--===============3308761263751994792==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3308761263751994792==--
