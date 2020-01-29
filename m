Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EC6A14D12C
	for <lists+openwrt-devel@lfdr.de>; Wed, 29 Jan 2020 20:25:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gjpjxJz7BouvMSBJFnMo25xR3Ttgakz2ZW1tYp//on0=; b=UxHbXUj/zSL6QtGjjFCYkDy1M
	S50ozfQWvLT13io3UYMjxyS5SMztTZcpykNZYKZseADHEp4h98KRXhCPdwDmwGWacCCNmwK2+B2h4
	VkKpi1DL3DrnMNjsGQtrZANQLjusYnZVLItTbjdM+dk5SHJrDGOqcRu57jZYJLxTbO0XmQXwHfbU/
	2itfh4UaExdkWgX+XHNIss89MB50O+5UBmgEJZIlU26XLC3bejYFZDKFzwttbW9CYglF1yXSL2jeD
	K1rk981eYbvkgTEnB6K5h8pqXvLZQuyvhjTtIkTEwqBdwRWJ+9PoOFCAjlmL2ZtYyTarBQOTWjlcM
	nBQMgly2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwsxm-0001tr-DL; Wed, 29 Jan 2020 19:25:22 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwsxa-0001rZ-8u
 for openwrt-devel@lists.openwrt.org; Wed, 29 Jan 2020 19:25:14 +0000
Received: by mail-vs1-xe42.google.com with SMTP id n27so533469vsa.0
 for <openwrt-devel@lists.openwrt.org>; Wed, 29 Jan 2020 11:25:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=lKPUdvDTVzWJzueAt6OlRXi3qGdQawFbeOQEjTK3Kt4=;
 b=RqVHln7SJHlBlPjcWIC2sbgyiSEGJBl1KTWXPGV981ae8olDyEq6lzI2JAgzkdwaa1
 Me4/Wxb4xQJg0hqEK5JEkEpUr80M7T/aUuys5Y5QPl+A70fI8ODBxG2X8YIANItaVbm+
 6tb+AKkW/fCf5vyUw1iFbwZPuW6qTfQ2yVPp5h7q+FelPxWlvMK4UJ4t20UTS/sBElD1
 DDWp7nfAivPILfx/GWqYlPaIWf6EONi4DjQ6Tp05n8wweVPmFniLUZLKrON4Fg3OTrgt
 b+z/cHwOeFF1+R/vFszCzS8KVsSp5fjfWjbPZ8JWFVd01uqKqt7YIC9ijr90ezUYtVSK
 pnrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=lKPUdvDTVzWJzueAt6OlRXi3qGdQawFbeOQEjTK3Kt4=;
 b=BiZOA2Rd0iGLEsVgxXX5G7yvowSqNgjUjbtH6AD4pX9LvygR30kiB6wzPkVD0DwoXb
 ZHjCXLbSFcNHma1kHz6qXAhEo0MynwHtQt59tltlTtH5mSHnV8vAjR18EquYlCkUDmWV
 f8mAg/G5X/KrB7ajqYHnVbt8d54Bpl3LwFntEscWQxY31zLYg0HDQBIUFh4XClgF9Dim
 amut4Yol3zlNCxjScJ1a+zedVl4jJv4g9uUCVqvj0He7Kh8OwKyoj9EpcJ0latOJEAry
 NeH1Fxtt3gT4b2lxhzujHbvRiJaHGDz4shfd9Bea5zbAJhE9BkzcJU0SRZAAMQ+DBl9c
 8vxw==
X-Gm-Message-State: APjAAAW0uVKOflVmp7tmDCx3RYGN2mZJQFlAJTAGIrw3yVG2ax8sjCSc
 nF8D+nyYCxq6gOtOeN0vVYz5tXWgg5bt6SXpli4d
X-Google-Smtp-Source: APXvYqyhiP2migERvr8E154eCpAOZguGztBtg38RcpA17TjojN5SBFN4I98ireQu/CGD5+wYITKoGGMvk7VojDwkQaE=
X-Received: by 2002:a05:6102:677:: with SMTP id
 z23mr751947vsf.202.1580325908968; 
 Wed, 29 Jan 2020 11:25:08 -0800 (PST)
MIME-Version: 1.0
References: <20200129115033.22430-1-rsalvaterra@gmail.com>
In-Reply-To: <20200129115033.22430-1-rsalvaterra@gmail.com>
From: Rui Salvaterra <rsalvaterra@gmail.com>
Date: Wed, 29 Jan 2020 19:24:57 +0000
Message-ID: <CALjTZvYdM+pSmCYU4KrB-UKbtY+v9GVfdUz3pNjyd3PY50040w@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_112510_342775_8F20276D 
X-CRM114-Status: GOOD (  14.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rsalvaterra[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] firewall3: utils: create a common
 helper to find strings is files.
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
Content-Type: multipart/mixed; boundary="===============0594554771124941852=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============0594554771124941852==
Content-Type: multipart/alternative; boundary="0000000000006efb09059d4c4c2d"

--0000000000006efb09059d4c4c2d
Content-Type: text/plain; charset="UTF-8"

Please ignore this one for the moment, it seems to be bugged. Sorry for the
noise.

A quarta, 29/01/2020, 11:50, Rui Salvaterra <rsalvaterra@gmail.com>
escreveu:

> Both fw3_has_table and fw3_has_target do the same thing. Factor out the
> common code into a separate function.
>
> Signed-off-by: Rui Salvaterra <rsalvaterra@gmail.com>
> ---
>  utils.c | 42 ++++++++++++++----------------------------
>  1 file changed, 14 insertions(+), 28 deletions(-)
>
> diff --git a/utils.c b/utils.c
> index da65632..228d63f 100644
> --- a/utils.c
> +++ b/utils.c
> @@ -316,23 +316,19 @@ fw3_command_close(void)
>         pipe_pid = -1;
>  }
>
> -bool
> -fw3_has_table(bool ipv6, const char *table)
> +static bool
> +file_contains(const char *path, const char* str)
>  {
>         FILE *f;
> -
>         char line[12];
>         bool seen = false;
>
> -       const char *path = ipv6
> -               ? "/proc/net/ip6_tables_names" :
> "/proc/net/ip_tables_names";
> -
> -       if (!(f = fopen(path, "r")))
> +       if(!(f = fopen(path, "r")))
>                 return false;
>
> -       while (fgets(line, sizeof(line), f))
> +       while(fgets(line, sizeof(line), f))
>         {
> -               if (!strncmp(line, table, strlen(table)))
> +               if (!strcmp(line, str))
>                 {
>                         seen = true;
>                         break;
> @@ -345,31 +341,21 @@ fw3_has_table(bool ipv6, const char *table)
>  }
>
>  bool
> -fw3_has_target(const bool ipv6, const char *target)
> +fw3_has_table(const bool ipv6, const char *table)
>  {
> -       FILE *f;
> +       const char *path = ipv6
> +               ? "/proc/net/ip6_tables_names" :
> "/proc/net/ip_tables_names";
>
> -       char line[12];
> -       bool seen = false;
> +       return file_contains(path, table);
> +}
>
> +bool
> +fw3_has_target(const bool ipv6, const char *target)
> +{
>         const char *path = ipv6
>                 ? "/proc/net/ip6_tables_targets" :
> "/proc/net/ip_tables_targets";
>
> -       if (!(f = fopen(path, "r")))
> -               return false;
> -
> -       while (fgets(line, sizeof(line), f))
> -       {
> -               if (!strcmp(line, target))
> -               {
> -                       seen = true;
> -                       break;
> -               }
> -       }
> -
> -       fclose(f);
> -
> -       return seen;
> +       return file_contains(path, target);
>  }
>
>  bool
> --
> 2.25.0
>
>

--0000000000006efb09059d4c4c2d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Please ignore this one for the moment, it seems to b=
e bugged. Sorry for the noise.<br><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">A quarta, 29/01/2020, 11:50, Rui Salvaterra &=
lt;<a href=3D"mailto:rsalvaterra@gmail.com">rsalvaterra@gmail.com</a>&gt; e=
screveu:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex">Both fw3_has_table and fw3=
_has_target do the same thing. Factor out the<br>
common code into a separate function.<br>
<br>
Signed-off-by: Rui Salvaterra &lt;<a href=3D"mailto:rsalvaterra@gmail.com" =
target=3D"_blank" rel=3D"noreferrer">rsalvaterra@gmail.com</a>&gt;<br>
---<br>
=C2=A0utils.c | 42 ++++++++++++++----------------------------<br>
=C2=A01 file changed, 14 insertions(+), 28 deletions(-)<br>
<br>
diff --git a/utils.c b/utils.c<br>
index da65632..228d63f 100644<br>
--- a/utils.c<br>
+++ b/utils.c<br>
@@ -316,23 +316,19 @@ fw3_command_close(void)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 pipe_pid =3D -1;<br>
=C2=A0}<br>
<br>
-bool<br>
-fw3_has_table(bool ipv6, const char *table)<br>
+static bool<br>
+file_contains(const char *path, const char* str)<br>
=C2=A0{<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 FILE *f;<br>
-<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 char line[12];<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 bool seen =3D false;<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0const char *path =3D ipv6<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0? &quot;/proc/net/i=
p6_tables_names&quot; : &quot;/proc/net/ip_tables_names&quot;;<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!(f =3D fopen(path, &quot;r&quot;)))<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if(!(f =3D fopen(path, &quot;r&quot;)))<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return false;<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0while (fgets(line, sizeof(line), f))<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0while(fgets(line, sizeof(line), f))<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!strncmp(line, =
table, strlen(table)))<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!strcmp(line, s=
tr))<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 seen =3D true;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 break;<br>
@@ -345,31 +341,21 @@ fw3_has_table(bool ipv6, const char *table)<br>
=C2=A0}<br>
<br>
=C2=A0bool<br>
-fw3_has_target(const bool ipv6, const char *target)<br>
+fw3_has_table(const bool ipv6, const char *table)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0FILE *f;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0const char *path =3D ipv6<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0? &quot;/proc/net/i=
p6_tables_names&quot; : &quot;/proc/net/ip_tables_names&quot;;<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0char line[12];<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0bool seen =3D false;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0return file_contains(path, table);<br>
+}<br>
<br>
+bool<br>
+fw3_has_target(const bool ipv6, const char *target)<br>
+{<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 const char *path =3D ipv6<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ? &quot;/proc/net/i=
p6_tables_targets&quot; : &quot;/proc/net/ip_tables_targets&quot;;<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!(f =3D fopen(path, &quot;r&quot;)))<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return false;<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0while (fgets(line, sizeof(line), f))<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!strcmp(line, t=
arget))<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0seen =3D true;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0break;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0fclose(f);<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0return seen;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0return file_contains(path, target);<br>
=C2=A0}<br>
<br>
=C2=A0bool<br>
-- <br>
2.25.0<br>
<br>
</blockquote></div></div></div>

--0000000000006efb09059d4c4c2d--


--===============0594554771124941852==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0594554771124941852==--

