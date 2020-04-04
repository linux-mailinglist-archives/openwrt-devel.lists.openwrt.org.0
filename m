Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEDEC19E732
	for <lists+openwrt-devel@lfdr.de>; Sat,  4 Apr 2020 20:48:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AOlt/5kU/TVBD+sxusMvpfl6EVi9n1oPYl6+0XtNE/Q=; b=I9UojRKr4BuAPWRTOSJMHTMiy
	2FZr45637HGHlY11p5oa4pVh8y9Nthk8nRIRD3uzoQLIIL2SDmYOTaw3ouCNICEH2A6M9CoNBA7T3
	FpPWSnldUpee5iJASFCxNd+eUdpkxhZj9iaTxzo0/ZLzRo+A1Bbsbk9V/0GUqUU01JvpLcXneJ+OA
	e4RcPdYzMpMuJmSaaEpUmc4E/wcLY+GD/xhq2YKGz7pwxKrV3cuaz/KJo+bFrt1Plp+i991dMHaKO
	duBEybWdewyN1VcjA5WGek1ibBNQlJYeKdBd/Wpjq/4XueYv4PjDbDfUOv4Tdiipa7WXfbYa8uZ9D
	A2EL9nPww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKnqM-0008AN-JB; Sat, 04 Apr 2020 18:48:34 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKnqE-00089r-54
 for openwrt-devel@lists.openwrt.org; Sat, 04 Apr 2020 18:48:27 +0000
Received: by mail-qk1-x741.google.com with SMTP id l25so3758686qkk.3
 for <openwrt-devel@lists.openwrt.org>; Sat, 04 Apr 2020 11:48:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6+TqAXulhHT/VMvc0kQl60+/dJwcK+p0du35W7HWVrg=;
 b=sMUOfix11Uyz2uxY4nmnmtZ8kmsXCapLnNYkZnO1c9ysCmx74uEodiPjhNorV8Sdr6
 Avg6YPgC74bofPBMONnzS/NVwirg0THG5ePcT+7cFnUoLKcegFUIQeX1eVaGRxbcN1Hv
 clXaHs+UOd4qWbit1KbKIHiCCqMB/wWEVdu0o8hexpwdU9MDvt3seDJmIE+8IAfHIJDx
 y2WAFg2aXxY/AzLuHRJp44AXoE3lv0wfAhd1OGJH/tADFFMtfNNcGGTlWyKy8YdwLNko
 CBzT7OqE6KI7dJWyFsUsnAeTXw1aacN/tJPwO6X0PBhNi+pJMDmtqxCueNfOHsDPae6c
 EsCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6+TqAXulhHT/VMvc0kQl60+/dJwcK+p0du35W7HWVrg=;
 b=rdarat3r42/x+0TejjuVrgxHK0pXPCRQ3Dr+r9RVSli4f6KEQHplj85RBeWt1WCbeh
 NPtfYfPYkqKnYeC5t1K//Osx66G2uPPArDEnjpe6H6kgIkG8AU9kAIAhtUFVo+tStGMS
 upFJuR7GjB+pgLWxESpGbT0X9/CIN1NH2ByaEz71tUeIpxXAgfgFXa4hXKAaAStABgdT
 ES5mE/Kui7wYCzaoeeOfX4JKHcy1ifs8N0jqwZTsbvnsPrEA/vuGvoGq0cK8qK1hM0FF
 d7vNQPAcd/XuDHjaDVdhH7YUPpgfDMGK+HEPwbxl9+WUNfKVL2fufyMcHp+s5BHe+x/l
 0KJA==
X-Gm-Message-State: AGi0Pubg9z3VRb41RIL+knwoRhlzWyBbcErUJJ2FxVFsbNyPTa2Gdb10
 yqAFvGBrCNeOw0mFCdfaHvQEy0SoVmkJFpJuPczheFhQ
X-Google-Smtp-Source: APiQypLFPKX64XrNMa9YiIf8kVYF/gcqJmabGy3cD5/TImTtO9kpghNKTv1nKiBihBgRvvtnGgFoTJMNkLJz3Xm0+SI=
X-Received: by 2002:a37:a0d6:: with SMTP id
 j205mr10837127qke.455.1586026104831; 
 Sat, 04 Apr 2020 11:48:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200327123608.198650-1-peter.stadler@student.uibk.ac.at>
 <CAJLcKsH=8d=7DXQ8LzM6LV_+eBuRNzGUzG2_urrFF+E-Q2xA3g@mail.gmail.com>
 <004c01d60ab1$538a73c0$fa9f5b40$@adrianschmutzler.de>
In-Reply-To: <004c01d60ab1$538a73c0$fa9f5b40$@adrianschmutzler.de>
From: Hans Dedecker <dedeckeh@gmail.com>
Date: Sat, 4 Apr 2020 20:48:13 +0200
Message-ID: <CAJLcKsH1qgQOoDiAZg=iBkKRoHkhyk75ifArKQpFjMLgJensRA@mail.gmail.com>
To: mail@adrianschmutzler.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_114826_216540_43F795B6 
X-CRM114-Status: GOOD (  11.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
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
Content-Type: multipart/mixed; boundary="===============0621939254675362330=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============0621939254675362330==
Content-Type: multipart/alternative; boundary="0000000000009543db05a27b7a23"

--0000000000009543db05a27b7a23
Content-Type: text/plain; charset="UTF-8"

Hi

On Sat, Apr 4, 2020 at 8:46 PM <mail@adrianschmutzler.de> wrote:

> >> prepend 'uci' to 'commit network'
> > Can you explain why the prepend of 'uci' is required ?
> > In other words what is not working as I fail to spot the issue
>
> I think the author is right. "commit" is no command but an argument to the
> uci command.
>
I've tested the script and it works fine for me ..
So I want to understand what is failing ...

Hans

>
> Best
>
> Adrian
>

--0000000000009543db05a27b7a23
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi<br></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Sat, Apr 4, 2020 at 8:46 PM &lt;<a href=3D=
"mailto:mail@adrianschmutzler.de">mail@adrianschmutzler.de</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">&gt;&gt; prepend =
&#39;uci&#39; to &#39;commit network&#39;<br>
&gt; Can you explain why the prepend of &#39;uci&#39; is required ?<br>
&gt; In other words what is not working as I fail to spot the issue<br>
<br>
I think the author is right. &quot;commit&quot; is no command but an argume=
nt to the uci command.<br></blockquote><div>I&#39;ve tested the script and =
it works fine for me ..</div><div>So I want to understand what is failing .=
..</div><div><br></div><div>Hans<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">
<br>
Best<br>
<br>
Adrian<br>
</blockquote></div></div>

--0000000000009543db05a27b7a23--


--===============0621939254675362330==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0621939254675362330==--

