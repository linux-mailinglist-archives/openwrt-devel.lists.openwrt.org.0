Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86B1F2ACA3
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 May 2019 01:40:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TSMGydZbz5Tyiw0MojvSza9q7BKncewWSWHxU4MFJY8=; b=XXsYxzgjDQUSpDGpPyTMcP7jD
	w1rebIvgZzteHvIqRyzIiJds/ioQKvUq7uTouvuKWNAwE7MjkOvXBFtQ3QQ/RWW47P0mgq7iPo+65
	mYYwxZaAns35Wic7hCSpS5JnL5CTxrfc/RyhHoaP5PLKBeKbGvSFX8FMKpfAHKuXEAzo+i3bRcsMC
	tJotGfmzJ25zlNrTJJllF3gOb9v8VnnKgA1UO9RvWPrkYvA8OZJ1w3+bOFyr4Klm/h5vnWFv1bukb
	JMF4pF4ZedIi2CqYDaGDkzmGsWh8a2L7i8czqtY8vTGkxr61M6SmYsRam/zsqcSEvVDle0Sm6Puik
	+LMVS0nYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV2kl-0003b1-04; Sun, 26 May 2019 23:40:35 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV2ke-0003aZ-Rz
 for openwrt-devel@lists.openwrt.org; Sun, 26 May 2019 23:40:30 +0000
Received: from ubuntu.pn.wagsky.com (c-69-181-42-248.hsd1.ca.comcast.net
 [69.181.42.248])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id 088443E44E;
 Sun, 26 May 2019 16:39:54 -0700 (PDT)
To: Hans Dedecker <dedeckeh@gmail.com>, =?UTF-8?Q?Fabian_Bl=c3=a4se?=
 <fabian@blaese.de>
References: <mailman.42638.1558865988.2376.openwrt-devel@lists.openwrt.org>
 <CAJLcKsG5eH=CJ-t+x+m1+-+aKL641+cvM8aeKFZEvcBA_Sn15g@mail.gmail.com>
From: Jeff Kletsky <lede@allycomm.com>
Message-ID: <e1829eba-2c43-7fd8-c20b-2480427f8f7d@allycomm.com>
Date: Sun, 26 May 2019 16:39:53 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAJLcKsG5eH=CJ-t+x+m1+-+aKL641+cvM8aeKFZEvcBA_Sn15g@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_164028_908059_30CA8727 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [138.68.30.55 listed in list.dnswl.org]
 0.0 HTML_MESSAGE           BODY: HTML included in message
Subject: Re: [OpenWrt-Devel] [PATCH] gre: introduce 'nohostroute' option
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============6099120700057673529=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--===============6099120700057673529==
Content-Type: multipart/alternative;
 boundary="------------525729FF2675A1C70B681AB9"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------525729FF2675A1C70B681AB9
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 5/26/19 12:15 PM, Hans Dedecker wrote:

> Hi,
> On Sun, May 26, 2019 at 12:19 PM Fabian Bläse via openwrt-devel
> <openwrt-devel@lists.openwrt.org> wrote:
> [...]
> Please use git send-email to deliver the patch
>
> Hans
>> ---
>>   package/network/config/gre/files/gre.sh | 14 ++++++++++----
>>   1 file changed, 10 insertions(+), 4 deletions(-)
>>
>> diff --git a/package/network/config/gre/files/gre.sh b/package/network/config/gre/files/gre.sh
>> index 2bb1010b76..3414ed3047 100755
>> --- a/package/network/config/gre/files/gre.sh
>> +++ b/package/network/config/gre/files/gre.sh
>> [...]

I can confirm the need to manage the routing generated by the call.
When I was using Layer 2, GRE tunnels I found that I had reverse
at least some of effect of the call to get routing to work properly.

I was unable to determine why the routing was being set as it was,
and crudely reversed it with
  
           ( proto_add_host_dependency "$cfg" "$peeraddr" "$tunlink" )
  
   +       # jmk -- hack for broken logic somewhere
   +
   +       ip route delete proto static "$peeraddr"
   +


Jeff


--------------525729FF2675A1C70B681AB9
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <pre>On 5/26/19 12:15 PM, Hans Dedecker wrote:</pre>
    <blockquote type="cite"
cite="mid:CAJLcKsG5eH=CJ-t+x+m1+-+aKL641+cvM8aeKFZEvcBA_Sn15g@mail.gmail.com">
      <pre class="moz-quote-pre" wrap="">Hi,
On Sun, May 26, 2019 at 12:19 PM Fabian Bläse via openwrt-devel
<a class="moz-txt-link-rfc2396E" href="mailto:openwrt-devel@lists.openwrt.org">&lt;openwrt-devel@lists.openwrt.org&gt;</a> wrote:
</pre>
      <pre>[...]</pre>
      <pre class="moz-quote-pre" wrap="">
Please use git send-email to deliver the patch

Hans
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">---
 package/network/config/gre/files/gre.sh | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/package/network/config/gre/files/gre.sh b/package/network/config/gre/files/gre.sh
index 2bb1010b76..3414ed3047 100755
--- a/package/network/config/gre/files/gre.sh
+++ b/package/network/config/gre/files/gre.sh
[...]</pre>
      </blockquote>
    </blockquote>
    <pre>
</pre>
    <pre>I can confirm the need to manage the routing generated by the call.
When I was using Layer 2, GRE tunnels I found that I had reverse 
at least some of effect of the call to get routing to work properly. 

I was unable to determine why the routing was being set as it was, 
and crudely reversed it with 
 
          ( proto_add_host_dependency "$cfg" "$peeraddr" "$tunlink" )
 
  +       # jmk -- hack for broken logic somewhere
  +
  +       ip route delete proto static "$peeraddr"
  +


Jeff

</pre>
  </body>
</html>

--------------525729FF2675A1C70B681AB9--


--===============6099120700057673529==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6099120700057673529==--

