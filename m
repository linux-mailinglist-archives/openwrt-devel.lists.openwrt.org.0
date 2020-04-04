Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E13819E762
	for <lists+openwrt-devel@lfdr.de>; Sat,  4 Apr 2020 21:30:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Hl6zIl/s5uFV++fF354eyYrY+jZCWHACMClKLyEh7t4=; b=eDQRvWXfc4oWKX7FTnhTBlB5/
	19Xps6HXVRQR9N5rHnVXgsIMFcaZOJIeAZ0xI1KCOpDZow7OAdumcJRtLZmJgcZ0eU95yvgQyvPy7
	rAHNml8qd0rvRkGpLBYyns/V1hTjnTOjoMwN5WUGrJEHbrznvPP6z1OQbTrJbahIhKYK+AepW9OJX
	9fHztD1BXwsWp8KylPc3Cf6Kxw5EzIpemxNFjS/Z5I7WgESY/Wi0EGnYpFO+aG2kifCdbvkRXwJA9
	HRHRSJRlS1KMxwYvBWBWvv6igNWVAuFlZ1VdGFf+kq3nt369jFJ2rKIWOWf1EWkjPXf5PTxViEb3D
	1rbtE677Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKoVH-00015H-K4; Sat, 04 Apr 2020 19:30:51 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKoUO-0006Xo-29
 for openwrt-devel@lists.openwrt.org; Sat, 04 Apr 2020 19:29:57 +0000
Received: by mail-qk1-x743.google.com with SMTP id h14so11904491qke.5
 for <openwrt-devel@lists.openwrt.org>; Sat, 04 Apr 2020 12:29:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oQFDfLi97kYnkKO5F5PizsHLftZfF0KBXESwpgGSL5g=;
 b=bb/mXOS/4RTb5sZXKM+5u8TgZEkIw3L35vNtnPdgBiMc27d+u7zXTj7FUGcYsI4fGp
 yUp+3QuIZDAlJldCqOW/+mlAXKSdKh/zpYMBAOC7i8e8Q8cHXP/3pHBoNoYdFGn3pmjy
 BV1WEbSoU8ohMzM6TtK5sXm8U4OmItUq0ruAvKMo7j0FdETAxa9CEhiEDu4l6WkFEpqH
 09xSJOd+d5uOYHcOCBNGzHXNl4A3+4rfePCRCEZi4CDx/CKiU/T/BtgUkdPU2+5jsslk
 fFRuCXUQx8zSCCddjEkUJgc2FMHB6v9o6XNrSYqbr0+lS9LXGMnlNw1+s7tHl9qYLAUW
 0RQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oQFDfLi97kYnkKO5F5PizsHLftZfF0KBXESwpgGSL5g=;
 b=I8EIMlBHg5q0YB1kjt8GUImUv6ysy1lDoVfmBx+9cD44e9FKfZXUb59PQR05BFW6P+
 D+DmGtXzWVWc0pG1Lv64FxdgK2jPSmOj6HX0Wf3HgtP/kom1xbUbo43g/eYZ26uRf283
 kDy488pYPQ1trO8UKfqznATqwMg2gLdGueUZfUoJhHKK1yQASC5+CafOSykOK93Fym34
 kTUSKUA8Jz2QBebon9pwnD8btTsIhiERKUTjFIQeFCXBLnUeq+LJPUiEQD9s5G8rU+/r
 GCJJ919Dlhg498PD5RsJwt9ysuNXCb1g/IFZjiqwmbhUjyGC9BRLJtBQ+VaExbAIjcfg
 ukvQ==
X-Gm-Message-State: AGi0PuZcDEWHM1DvzSwzu8UH9KPvcFMoSN2fQw34JfgWl5QpFFIefdWf
 yv91LDt0KG3JREPoPlr5lDs6ibzoYxNy2v8xYcU=
X-Google-Smtp-Source: APiQypIZYDpdpQiO2zK0RuXCTXCDCgQzmsjEmgTUAlq5c8qEkrQDFxyxvSNbXaoD5p+jYko4pBz+oqRp1tshAATuvV8=
X-Received: by 2002:a37:b702:: with SMTP id h2mr15235320qkf.491.1586028594845; 
 Sat, 04 Apr 2020 12:29:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200327123608.198650-1-peter.stadler@student.uibk.ac.at>
 <CAJLcKsH=8d=7DXQ8LzM6LV_+eBuRNzGUzG2_urrFF+E-Q2xA3g@mail.gmail.com>
 <004c01d60ab1$538a73c0$fa9f5b40$@adrianschmutzler.de>
 <CAJLcKsH1qgQOoDiAZg=iBkKRoHkhyk75ifArKQpFjMLgJensRA@mail.gmail.com>
 <009d01d60ab3$dc783ee0$9568bca0$@adrianschmutzler.de>
In-Reply-To: <009d01d60ab3$dc783ee0$9568bca0$@adrianschmutzler.de>
From: Hans Dedecker <dedeckeh@gmail.com>
Date: Sat, 4 Apr 2020 21:29:43 +0200
Message-ID: <CAJLcKsEnWof6G=Ni1qNukUEd9OyDQAQX0MsZMd7EzKPRXuMXCw@mail.gmail.com>
To: mail@adrianschmutzler.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_122956_121522_AEA275BF 
X-CRM114-Status: GOOD (  18.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dedeckeh[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] netifd: fix 14_migrate-dhcp-release
 script
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
Cc: Peter Stadler <peter.stadler@student.uibk.ac.at>,
 openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============8227349569087328574=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8227349569087328574==
Content-Type: multipart/alternative; boundary="000000000000ffd9b205a27c0ef8"

--000000000000ffd9b205a27c0ef8
Content-Type: text/plain; charset="UTF-8"

On Sat, Apr 4, 2020 at 9:04 PM <mail@adrianschmutzler.de> wrote:

> >>> prepend 'uci' to 'commit network'
> >> Can you explain why the prepend of 'uci' is required ?
> >> In other words what is not working as I fail to spot the issue
> >
> > I think the author is right. "commit" is no command but an argument to
> the uci command.
> > I've tested the script and it works fine for me ..
> > So I want to understand what is failing ...
>
> uci-defaults "scripts" are implemented here:
>
> https://github.com/openwrt/openwrt/blob/master/package/base-files/files/lib/functions.sh#L256-L263
>
> As you see, after all of them have been sourced a global "uci commit" is
> called anyway.
>
> So, after all, the "uci commit something" statements in uci-defaults files
> are actually not strictly necessary. However, many authors prefer to have
> committed what they touch directly in the uci-defaults script.
> This is handled relatively inconsistently across OpenWrt main/packages
> repos, I once had a look into it and found that it was about 50:50 back
> then (having a commit in the file vs. not having it).
>
I observed the same inconsistency across the code base which makes it hard
to refer to a default way of working

>
> However, I'd still expect the "commit network" to produce some error
> anywhere.
>
I did not see an issue when doing a quick test as the global 'uci commit'
covered up the issue for me

>
> But instead of adding the "uci" in front, another working solution would
> be to just drop the line entirely.
>
Agree and I would prefer this solution

Thx,
Hans

>
> Best
>
> Adrian
>

--000000000000ffd9b205a27c0ef8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Sat, Apr 4, 2020 at 9:04 PM &lt;<a=
 href=3D"mailto:mail@adrianschmutzler.de">mail@adrianschmutzler.de</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">&gt;&gt;&=
gt; prepend &#39;uci&#39; to &#39;commit network&#39;<br>
&gt;&gt; Can you explain why the prepend of &#39;uci&#39; is required ?<br>
&gt;&gt; In other words what is not working as I fail to spot the issue<br>
&gt;<br>
&gt; I think the author is right. &quot;commit&quot; is no command but an a=
rgument to the uci command.<br>
&gt; I&#39;ve tested the script and it works fine for me ..<br>
&gt; So I want to understand what is failing ...<br>
<br>
uci-defaults &quot;scripts&quot; are implemented here:<br>
<a href=3D"https://github.com/openwrt/openwrt/blob/master/package/base-file=
s/files/lib/functions.sh#L256-L263" rel=3D"noreferrer" target=3D"_blank">ht=
tps://github.com/openwrt/openwrt/blob/master/package/base-files/files/lib/f=
unctions.sh#L256-L263</a><br>
<br>
As you see, after all of them have been sourced a global &quot;uci commit&q=
uot; is called anyway.<br>
<br>
So, after all, the &quot;uci commit something&quot; statements in uci-defau=
lts files are actually not strictly necessary. However, many authors prefer=
 to have committed what they touch directly in the uci-defaults script.<br>
This is handled relatively inconsistently across OpenWrt main/packages repo=
s, I once had a look into it and found that it was about 50:50 back then (h=
aving a commit in the file vs. not having it).<br></blockquote><div>I obser=
ved the same inconsistency across the code base which makes it hard to refe=
r to a default way of working=C2=A0 <br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex">
<br>
However, I&#39;d still expect the &quot;commit network&quot; to produce som=
e error anywhere.<br></blockquote><div>I did not see an issue when doing a =
quick test as the global &#39;uci commit&#39; covered up the issue for me<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
But instead of adding the &quot;uci&quot; in front, another working solutio=
n would be to just drop the line entirely.<br></blockquote><div>Agree and I=
 would prefer this solution</div><div><br></div><div>Thx,<br></div><div>Han=
s<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
Best<br>
<br>
Adrian<br>
</blockquote></div></div>

--000000000000ffd9b205a27c0ef8--


--===============8227349569087328574==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8227349569087328574==--

