Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 333A01A5282
	for <lists+openwrt-devel@lfdr.de>; Sat, 11 Apr 2020 16:35:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=M6mzuBlHkkzrzvyZmntWFt5x33wvGWP/OJL8bqTW+hA=; b=qsA9/jpZTtdwlMjkxk2+c5imv
	YFKzdBgsHH256Fuy3ezWKwIaG0zTZIAdzll6OzK925sZxYlFXGZjOvDimcwRuqa8GfcFqc/nGXi/g
	1NkDCEWnn4GPgtq+XhmgwxlbatsNfKsrrFb/y4NZauV1FHciHJ71UP5CbfoGZohDfOL/vAFNIvbjN
	oVhXub8c+f9EkWuc41luO9TxVBwsrW16+d01aMeLN+rl5iaG2JDeJh4cvgP3sF42k2CIn/P+VHJlL
	NHGb2uCVdcGPD8FAHxYVKj/FYMRYOe2fwQOYGGrIZPHTs2LJURUebLgoNa74X/qPopQcvwA2VOO3p
	qeBhGDGuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNHEZ-00073l-7W; Sat, 11 Apr 2020 14:35:47 +0000
Received: from resqmta-ch2-11v.sys.comcast.net
 ([2001:558:fe21:29:69:252:207:43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNHES-00072f-17
 for openwrt-devel@lists.openwrt.org; Sat, 11 Apr 2020 14:35:41 +0000
Received: from resomta-ch2-07v.sys.comcast.net ([69.252.207.103])
 by resqmta-ch2-11v.sys.comcast.net with ESMTP
 id NGhbjAt8WHlRVNHEDjP2pa; Sat, 11 Apr 2020 14:35:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
 s=20190202a; t=1586615725;
 bh=pC2IIUOLALLfGMa4doThJ4iHWCKvRs5WmUus0sz+OJc=;
 h=Received:Received:Subject:To:From:Message-ID:Date:MIME-Version:
 Content-Type;
 b=o2N25DK6XUrT5Bnkz7S49PplJB5tGTrZHT88x+/HjGnfAPYzwjvTM+96Rc0fNhF9i
 Rx67iBAlWSBN2qVtE/BK1WRlrG4liC2pU8uruFn+mLjVh6FccqHwlZBWvXiVfuJQVn
 A+oMzKkJVyLlsXpK2x7SdXAnFhijsK7zbs1PtTEKGHRf3w1d/Fh0A2QedSUyM4E6ON
 wBytD360JLY9m7AM8DfHwlMfWvgqWjtmaLqNjjW+k5xrJ8rCeh0G5F5hGqG4YbjVs3
 HYzFbtWKcxklnZXOW0hjrosI1ErOuzvmQVmCWFfk8BHmsfywbjk8ZLG7UciuuueE9k
 43ViY+EMzPSHA==
Received: from [IPv6:2601:640:c200:2b7:e9c0:df53:c559:58b]
 ([IPv6:2601:640:c200:2b7:e9c0:df53:c559:58b])
 by resomta-ch2-07v.sys.comcast.net with ESMTPA
 id NHEBjDBkSTpPjNHECjP8hQ; Sat, 11 Apr 2020 14:35:24 +0000
X-Xfinity-VMeta: sc=0.00;st=legit
To: openwrt-devel@lists.openwrt.org
References: <7ec62c210cb8f78808f8225ebf33a60dee76a2ca.camel@flyn.org>
From: Dana Myers <k6jq@comcast.net>
Message-ID: <01af4496-a098-aea5-1ed7-d61d74a0a65b@comcast.net>
Date: Sat, 11 Apr 2020 07:35:23 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <7ec62c210cb8f78808f8225ebf33a60dee76a2ca.camel@flyn.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_073540_125343_5E778900 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:558:fe21:29:69:252:207:43 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k6jq[at]comcast.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Java compiler
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

On 4/10/2020 1:48 PM, W. Michael Petullo wrote:
> Has anyone tried to build a Java compiler package for OpenWrt? I am
> investigating doing this. I see the lang/jamvm JVM, but no compiler
> akin to devel/gcc or lang/golang. I have packaged a number of things,
> but I suspect this will be a bit more of a challenge. Hence my question
> here.

In a related context, I recently wrote:
-----
I updated classpath and jamvm over 5 years ago to support a project I am no longer
involved with. Upstream jamvm has not changed in almost 6 years, with language
support frozen at Java 8. Upstream classpath has not changed in 8 years, with
language support frozen at Java 7. (My project was specifically compiled at v1.5).

jamvm depends on classpath; if classpath is removed, jamvm should be as well.
I am no longer in a position to actively maintain either of these packages.
-----

So, Java support in OpenWRT arguably requires starting with the JVM and
making sure it supports a modern revision of the language. Then, either
updating classpath to a modern version or possibly adopting the classlib from
OpenJDK. With this done, you may be able to run Java classes compiled with
modern tools; IIRC, support for v1.5 compilation was removed from the
JDK several versions ago.

[ Also, My application pared-down classpath to just the necessary classes; even if
the OpenWRT platform in use has a lot of memory, classloading from flash
is _slow_. ]

Running JDK (javac) per se on OpenWRT strikes me as not being worth the effort.
Just getting the Java run-time environment modernized on OpenWRT is a
full-time job :-)

Cheers,
Dana


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
