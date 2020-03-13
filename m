Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B605184DD4
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Mar 2020 18:43:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cblsgQXxsfl6yFkbMxU/Gsmrzxv+Y+3zB2DLpA3JEJ8=; b=d+D2sqVkjT0pQdgKlM+KzeTss
	JqGViDnnyZo0X57//N48Ki6Qebyp85PPdTj85tpjaxgvl6HuYdhI1NjombZx/g/In/CQzLI6Vpute
	YUeI/54uDRC4Dr4bjy0+AhQt8j85L11EO/dKaRTIawvP72sW2oWUrh5vENqsh8biet2WVFm3NvbCB
	5WL6cEJx2GI7BqGo1mviT994SxtYv86Ky5nBhrvdfoRiczDUPu7WVzYHjbSxozIEHhlJmQi/JlO/x
	wkahyhQmDczjsdJwkxCeaJUWdB5lzEXkLqahNbadc14T3aeOSWcHa1VkAV4KcP74YtiJ/QV1BDqDo
	hAbo3s0xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCoKs-000273-RP; Fri, 13 Mar 2020 17:43:02 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCoKm-00026a-Cg
 for openwrt-devel@lists.openwrt.org; Fri, 13 Mar 2020 17:42:58 +0000
Received: by mail-qt1-x843.google.com with SMTP id z8so4842668qto.12
 for <openwrt-devel@lists.openwrt.org>; Fri, 13 Mar 2020 10:42:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tl93JOFLz0evORiYv/5r8ZP23W2fc0gPuOqJtfIOioY=;
 b=S1U+E/jJoT5I7rPei83oIT3lhXh+8S4ObVpcGwNbF9xR/XtXHPGOwWYse1X0EJUaNL
 2G7yy534KsNqKVMKEFAYsPr+LjWFUi7HgV9BLlJ7ihV50/w/4X3Xp6h9vs3FeB7aBdOZ
 /J7FX+xHxqO/97u8D8FVXAkCk4IAIuO2FzYps5vXg+AY3FOIFj1f7J+w4XFoZKKKjS5D
 2mFewrHLCsI7uvyoV7aErVP5Te8PDxzrlV5XS7e6YSqGEt4ZsCShh629/p+TV85htrH+
 mpUkxu+ZY5xIC1QCsr03diPG4CcF4hOoBumP6IC0ffCka87ZV8/W1B6BtvN3bL9mzkAA
 4Dmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tl93JOFLz0evORiYv/5r8ZP23W2fc0gPuOqJtfIOioY=;
 b=FtSlfewcz9JsrGdjCALJATm2rd9WwLG+LAiCkYHjoTflB6RJzClbbzRpZS/mq8YNli
 WTKJqEudDWWdwQjLJMQlikEIJ++WZZ8W8//E9mJ9CzvZkoKIYeIRXw7xzA7Ph2aWBZIG
 +ijxVptVumZHRSSvPve8hqxL06Glr8a4hjWsrXNfkxaYOidsUF8Oij8YqaZ2MsnxNinE
 jp2CILWA8MvvfLF5gxIwWIWNIzReorxtbWLomETCek2sp8XvkVFqWfpAB5+B5EBIdw4U
 D50vWoEcFaRM4SFmnmY4LcbXUDYyGblAR1RrLWPJ5zSDeqpIJYbVO2TuFEQq+Qqlf3TY
 eEkA==
X-Gm-Message-State: ANhLgQ3+OT62cYNQZ4ZXCndJPBio/LzCouQLRzW6Pi5fKkDMgxNeDlbs
 KiCFRU6mViKggLUNHtnpGcrgmzJNsb/mQ9atvU4=
X-Google-Smtp-Source: ADFU+vubWNcv+85hHEJLqScUdfs75wKcCeCXVSojCzWHuruPs3Iq4Vas7L4sEtij37ebN9q/1ETytr7DehFcrnczOOs=
X-Received: by 2002:aed:21bc:: with SMTP id l57mr3250655qtc.218.1584121373434; 
 Fri, 13 Mar 2020 10:42:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200313122024.707576-1-jo@mein.io>
 <CACfEFw96zEJ3Zp+oVjJ_4M=AW5_3cZdAuEV+2A5+SNmUXdRmWg@mail.gmail.com>
 <bc5d7630-f090-f108-e6a8-adf31a62d471@wwsnet.net>
In-Reply-To: <bc5d7630-f090-f108-e6a8-adf31a62d471@wwsnet.net>
From: Wes Turner <wes.turner@gmail.com>
Date: Fri, 13 Mar 2020 13:42:41 -0400
Message-ID: <CACfEFw_iY-MVD0LASr04DG7LZTBj_m3hDT7qm83EqH59K4kkjQ@mail.gmail.com>
To: Jo-Philipp Wich <jo@mein.io>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_104256_454179_31457D5C 
X-CRM114-Status: GOOD (  12.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wes.turner[at]gmail.com]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH uhttpd] client: allow keep-alive for
 POST requests
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============8678532813986669226=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8678532813986669226==
Content-Type: multipart/alternative; boundary="000000000000beab2705a0bfffd6"

--000000000000beab2705a0bfffd6
Content-Type: text/plain; charset="UTF-8"

On Fri, Mar 13, 2020, 12:39 PM Jo-Philipp Wich <jo@mein.io> wrote:

> Hi Wes,
>
> > Are there *new* security implications of allowing keep-alive?
>
> I don't see any immediate concerns. You can trigger resource intensive
> calls
> via GET, HEAD, PATCH, PUT or DELETE as well, all of them were allowed for
> keep-alive previously, only POST was filtered for unknown reasons.
>
> > Slowloris DoS comes to mind:
> > https://en.wikipedia.org/wiki/Slowloris_(computer_security)
>
> The DoS susceptibility should be same with or without this patch.
>
> > Older devices are likely somewhat trivially DoS-able without this patch;
> but
> > maybe include a config option to disable keep-alive?
>


> Disabling keep-alive has always been supported, either use
> uci set uhttpd.main.http_keepalive=0 or alternatively uhttpd -k 0
>

Thanks


> > What happens to RAM and CPU usage when there are multiple tabs open with
> > keep-alive on?
>
> Testing with 6 open browser tabs, all refreshing the main status page:
>
> With POST keep-alive:    uhttpd VSZ 4316K, CPU 5% usr, 6% sys
> Without POST keep-alive: uhttpd VSZ 4756K, CPU 11% usr, 8% sys
>
> Thats not a scientific benchmark though. In general you trade CPU (TLS
> setup,
> TCP connects) for memory (resident established connections).
>
> In case of non-malicious clients (like normal browser tabs background
> refreshing data) the memory resource consumption seems to be even lower
> because there's less active TLS sessions at every point in time. And
> almost no
> TLS connection attempts once all requires sessions are established.
>

That sounds ideal. Is this with or without the "[OpenWrt-Devel] [PATCH
ustream-ssl] ustream-openssl: clear error stack before SSL_read/SSL_write"
patch?

--000000000000beab2705a0bfffd6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Fri, Mar 13, 2020, 12:39 PM Jo-Philipp Wich &lt;<a =
href=3D"mailto:jo@mein.io" target=3D"_blank" rel=3D"noreferrer">jo@mein.io<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi Wes,<br>
<br>
&gt; Are there *new* security implications of allowing keep-alive?<br>
<br>
I don&#39;t see any immediate concerns. You can trigger resource intensive =
calls<br>
via GET, HEAD, PATCH, PUT or DELETE as well, all of them were allowed for<b=
r>
keep-alive previously, only POST was filtered for unknown reasons.<br>
<br>
&gt; Slowloris DoS comes to mind:<br>
&gt; <a href=3D"https://en.wikipedia.org/wiki/Slowloris_(computer_security)=
" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">https://en.wik=
ipedia.org/wiki/Slowloris_(computer_security)</a><br>
<br>
The DoS susceptibility should be same with or without this patch.<br>
<br>
&gt; Older devices are likely somewhat trivially DoS-able without this patc=
h; but<br>
&gt; maybe include a config option to disable keep-alive?<br></blockquote><=
/div></div><div dir=3D"auto"><br></div><div dir=3D"auto"><div class=3D"gmai=
l_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex">
<br>
Disabling keep-alive has always been supported, either use<br>
uci set uhttpd.main.http_keepalive=3D0 or alternatively uhttpd -k 0<br></bl=
ockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"auto">Thanks</=
div><div dir=3D"auto"><br></div><div dir=3D"auto"><div class=3D"gmail_quote=
"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex">
<br>
&gt; What happens to RAM and CPU usage when there are multiple tabs open wi=
th<br>
&gt; keep-alive on?<br>
<br>
Testing with 6 open browser tabs, all refreshing the main status page:<br>
<br>
With POST keep-alive:=C2=A0 =C2=A0 uhttpd VSZ 4316K, CPU 5% usr, 6% sys<br>
Without POST keep-alive: uhttpd VSZ 4756K, CPU 11% usr, 8% sys<br>
<br>
Thats not a scientific benchmark though. In general you trade CPU (TLS setu=
p,<br>
TCP connects) for memory (resident established connections).<br>
<br>
In case of non-malicious clients (like normal browser tabs background<br>
refreshing data) the memory resource consumption seems to be even lower<br>
because there&#39;s less active TLS sessions at every point in time. And al=
most no<br>
TLS connection attempts once all requires sessions are established.<br></bl=
ockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"auto">That sou=
nds ideal. Is this with or without the &quot;[OpenWrt-Devel] [PATCH ustream=
-ssl] ustream-openssl: clear error stack before SSL_read/SSL_write&quot; pa=
tch?</div></div>

--000000000000beab2705a0bfffd6--


--===============8678532813986669226==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8678532813986669226==--

