Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 629511F80B1
	for <lists+openwrt-devel@lfdr.de>; Sat, 13 Jun 2020 05:16:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0doFYk2hcYZLc3vRTsbjmO/iXk3xI1snAEInpojWk0Y=; b=te5MMVqRlI1UsN
	PRsUrZXK30cfIwCIcAzlliLkEk6PDCd6WX8nkc6c5U3qispB/LyOAat7iHaNaNJniJUt/350pKt7g
	DLdCa5Lk3omuEfRsDCqXMXXiT6s8FSTkPaGYmPpb+xf3Jr9Nuk+586qPzgzZrHHsDN9tc4ffFhH5G
	sHJaIULaVVBF9D8KJizvyH6vcIn/Ll4B/84Lm/RbeCLBpGDw4L/qCBY3YfhfSseq4dkD496XL+/u3
	QDGCbNKXT/sGSc9e2iZm4jz4p7P13HApkTbQnMKQ4vXUgsoL0JYe8/lHV+3FdmZ9rkUVz0DuRPKeS
	h1yTcY3faITcUz3SOtrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjweD-0003mn-4h; Sat, 13 Jun 2020 03:15:57 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjwe4-0003mI-7A
 for openwrt-devel@lists.openwrt.org; Sat, 13 Jun 2020 03:15:49 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLS1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.93.0.4) (envelope-from <daniel@makrotopia.org>)
 id 1jjwe0-0007VE-OM; Sat, 13 Jun 2020 05:15:46 +0200
Date: Sat, 13 Jun 2020 04:15:36 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: Jo-Philipp Wich <jo@mein.io>
Message-ID: <20200613031536.GA2794@makrotopia.org>
References: <4574871.31r3eYUQgx@lifestock>
 <20200612142538.GA304638@makrotopia.org>
 <70c34171-a853-3adb-d1ff-3774ad28baa1@wwsnet.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <70c34171-a853-3adb-d1ff-3774ad28baa1@wwsnet.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_201548_260245_EBF6C83E 
X-CRM114-Status: GOOD (  21.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH uclient v2] uclient-fetch: add option to
 read POST data from file
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Jo,

thanks for the quick review!

On Fri, Jun 12, 2020 at 10:42:11PM +0200, Jo-Philipp Wich wrote:
> Hi Gio, Daniel,
> 
> > [...]
> > ---
> > v2: make it compile, handle errors, add usage info, fix typos
> > 
> >  uclient-fetch.c | 31 +++++++++++++++++++++++++++++--
> >  1 file changed, 29 insertions(+), 2 deletions(-)
> > 
> > diff --git a/uclient-fetch.c b/uclient-fetch.c
> > index a06be5d..6119328 100644
> > --- a/uclient-fetch.c
> > +++ b/uclient-fetch.c
> > @@ -43,6 +43,7 @@
> >  
> >  static const char *user_agent = "uclient-fetch";
> >  static const char *post_data;
> > +static const char *post_file;
> >  static struct ustream_ssl_ctx *ssl_ctx;
> >  static const struct ustream_ssl_ops *ssl_ops;
> >  static int quiet = false;
> > @@ -334,7 +335,7 @@ static int init_request(struct uclient *cl)
> >  
> >  	msg_connecting(cl);
> >  
> > -	rc = uclient_http_set_request_type(cl, post_data ? "POST" : "GET");
> > +	rc = uclient_http_set_request_type(cl, post_data || post_file ? "POST" : "GET");
> >  	if (rc)
> >  		return rc;
> >  
> > @@ -347,6 +348,26 @@ static int init_request(struct uclient *cl)
> >  		uclient_http_set_header(cl, "Content-Type", "application/x-www-form-urlencoded");
> >  		uclient_write(cl, post_data, strlen(post_data));
> >  	}
> > +	else if(post_file)
> > +	{
> > +		FILE *input_file;
> > +		uclient_http_set_header(cl, "Content-Type", "application/x-www-form-urlencoded");
> 
> I think the Content-Type header should be configurable. Hard coding it to
> x-www-form-urlencoded severely limits the usefulness of this post-data feature
> (regardless of it being passed via command line argument or file) - or did I
> miss the ability to override it?

I agree with your argument, but that would break/exceed wget cmdline
compatibility (from WGET(1) manpage):
Wget does not currently support "multipart/form-data" for transmitting
POST data; only "application/x-www-form-urlencoded".

So at least we should have 'application/x-www-form-urlencoded' set as
default and allow setting different Content-Type using an optional
extra parameter to set it to other common types such as
'application/json; charset=utf-8'


> 
> > +
> > +		input_file = fopen(post_file, "r");
> > +		if (!input_file)
> > +			return errno;
> > +
> > +		char tbuf[1000];
> 
> It probably doesn't matter but why not using a base-2 value here? E.g. 1024.
> 
> > +		size_t rlen = 0;
> > +		do
> > +		{
> > +			rlen = fread(tbuf, 1, 1000, input_file);
> 
> Please replace 1000 with sizeof(tbuf).
> 
> > +			uclient_write(cl, tbuf, rlen);
> > +		}
> > +		while(rlen);
> > +
> > +		fclose(input_file);
> > +	}
> >  
> >  	rc = uclient_request(cl);
> >  	if (rc)
> > @@ -460,6 +481,7 @@ static int usage(const char *progname)
> >  		"	--password=<password>		HTTP authentication password\n"
> >  		"	--user-agent|-U <str>		Set HTTP user agent\n"
> >  		"	--post-data=STRING		use the POST method; send STRING as the data\n"
> > +		"	--post-file=FILE		use the POST method; send FILE as the data\n"
> >  		"	--spider|-s			Spider mode - only check file existence\n"
> >  		"	--timeout=N|-T N		Set connect/request timeout to N seconds\n"
> >  		"	--proxy=on|off|-Y on|off	Enable/disable env var configured proxy\n"
> > @@ -516,6 +538,7 @@ enum {
> >  	L_PASSWORD,
> >  	L_USER_AGENT,
> >  	L_POST_DATA,
> > +	L_POST_FILE,
> >  	L_SPIDER,
> >  	L_TIMEOUT,
> >  	L_CONTINUE,
> > @@ -532,6 +555,7 @@ static const struct option longopts[] = {
> >  	[L_PASSWORD] = { "password", required_argument },
> >  	[L_USER_AGENT] = { "user-agent", required_argument },
> >  	[L_POST_DATA] = { "post-data", required_argument },
> > +	[L_POST_FILE] = { "post-file", required_argument },
> >  	[L_SPIDER] = { "spider", no_argument },
> >  	[L_TIMEOUT] = { "timeout", required_argument },
> >  	[L_CONTINUE] = { "continue", no_argument },
> > @@ -598,6 +622,9 @@ int main(int argc, char **argv)
> >  			case L_POST_DATA:
> >  				post_data = optarg;
> >  				break;
> > +			case L_POST_FILE:
> > +				post_file = optarg;
> > +				break;
> >  			case L_SPIDER:
> >  				no_output = true;
> >  				break;
> > @@ -718,7 +745,7 @@ int main(int argc, char **argv)
> >  		/* no error received, we can enter main loop */
> >  		uloop_run();
> >  	} else {
> > -		fprintf(stderr, "Failed to establish connection\n");
> > +		fprintf(stderr, "Failed to send request: %s\n", strerror(rc));
> 
> This looks unrelated? Maybe add some "also fix error message in case of send
> failure" note to the commit message if it is intended.

It was just weird to see 'Failed to establish connection' as the error
message when what actually happened was that the file with POST data
could not be found or read from. So not entirely unrelated, but true,
should be mentioned in the commit message or even be a seperate commit.


Cheers


Daniel

> 
> >  		error_ret = 4;
> >  	}
> >  
> > 
> 
> 
> Regards,
> Jo
> 




> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
