Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A5AF35A72
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Jun 2019 12:31:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KbU0LcnpPXpqf+oHrVG8GR6MssXfM0/8x0C85lk8kPE=; b=GWTbSQS2Z90eEzXZ5TAYWMtED
	9dI6qPfPhNwoBtaDpDjEFVF0dK9Sw1/1JF6g2MYQxDfjLUYODvIXJLaESA1MxnDn00HzKW/XFb+GG
	fAeP9zY7CAEymQoixPNxY9cayIdRmbofl0ZYFdyXwdSypAhsdL4R6iw1KOLdZoZbkGybTMhvGwJq6
	/azfGv9Iv2qfV9EhY0+ZYcsgBFCJ1jhDThWp2ll3Tz16uVecUP7Cigz9e5e+CF5AnE4nbvuiU72Rr
	uzBmkaGtupOWPjsJQxb5oOv+AMiQBiX1NqvJNxHTnhLq/g2p7hDHP322MKyjCpqget18DUgYG3ZLs
	rnYxJmc4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYTCE-0007gi-QP; Wed, 05 Jun 2019 10:31:06 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYTC7-0007gE-R0
 for openwrt-devel@lists.openwrt.org; Wed, 05 Jun 2019 10:31:01 +0000
Received: from p5dcfb869.dip0.t-ipconnect.de ([93.207.184.105]
 helo=[192.168.45.104])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>) id 1hYTC6-0002gp-0L
 for openwrt-devel@lists.openwrt.org; Wed, 05 Jun 2019 12:30:58 +0200
To: openwrt-devel@lists.openwrt.org
References: <20190605063409.27769-1-john@phrozen.org>
 <hynK3tKHMk6tAKPpYkaNRSzi2nMrDdpKviIa49aQ2342@mailpile>
From: John Crispin <john@phrozen.org>
Message-ID: <23ef4eed-1984-9189-65e8-dd6dba5c3aaa@phrozen.org>
Date: Wed, 5 Jun 2019 12:30:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <hynK3tKHMk6tAKPpYkaNRSzi2nMrDdpKviIa49aQ2342@mailpile>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_033100_026460_0503C5B8 
X-CRM114-Status: GOOD (  15.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH V3 2/2] script/feeds: add a new command
 that allows generating a new feeds.conf
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
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


On 05/06/2019 12:17, Karl Palsson wrote:
> John Crispin <john@phrozen.org> wrote:
>> This can be used inside build setups for easy feeds.conf
>> generation.
>
> Could you give us an example of how this is actually easy, or
> what sort of functionality this is providing beyond "cat
> feeds.conf.default feeds.conf.extra > feeds.conf"
>
> It seems like a lot of perl for a narrow usecase.
>
> Sincerely,
> Karl Palsson

This was brought up as a missing feature by the prpl folks. I considered =

on how to best implement this and find that having proper tooling is =

much better than having to carry around an extra file that is cat. being =

able to build the feeds.conf dynamically like this just seems much =

cleaner to me and will allow downstream users, vendors, odms and =

integrators to have less need to patch their trees to death.

 =A0=A0=A0 John


>
>> Signed-off-by: John Crispin <john@phrozen.org>
>> ---
>>   scripts/feeds | 42 ++++++++++++++++++++++++++++++++++++++++++
>>   1 file changed, 42 insertions(+)
>>
>> diff --git a/scripts/feeds b/scripts/feeds
>> index 304ef6cbaf..7cd4639ca6 100755
>> --- a/scripts/feeds
>> +++ b/scripts/feeds
>> @@ -7,6 +7,7 @@ use metadata;
>>   use warnings;
>>   use strict;
>>   use Cwd 'abs_path';
>> +use File::Copy;
>>   =

>>   chdir "$FindBin::Bin/..";
>>   $ENV{TOPDIR} //=3D getcwd();
>> @@ -819,6 +820,42 @@ sub update {
>>   	return $failed;
>>   }
>>   =

>> +sub setup {
>> +	my %opts;
>> +
>> +	getopts('bh', \%opts);
>> +
>> +	if ($opts{h}) {
>> +		usage();
>> +		return 0;
>> +	}
>> +
>> +	if ($opts{b}) {
>> +		copy("feeds.conf.default", "feeds.conf") or die "Copy failed: $!"
>> +	} else {
>> +		unlink "feeds.conf"
>> +	}
>> +
>> +	open(my $fd, ">>feeds.conf");
>> +	while (my $entry =3D shift @ARGV) {
>> +		my ($type, $name, $src) =3D split /,/, $entry;
>> +
>> +		$update_method{$type} or do {
>> +			warn "Unknown type '$type' in parameter $entry\n";
>> +			unlink "feeds.conf";
>> +			return 1;
>> +		};
>> +		if ($name =3D~ /\s/ || $src =3D~ /\s/) {
>> +			warn "Feed names or sources may not contain whitespace characters in=
 parameter $entry\n";
>> +			unlink "feeds.conf";
>> +			return 1;
>> +		}
>> +		printf $fd "%s %s %s\n", $type, $name, $src;
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>>   sub feed_config() {
>>   	foreach my $feed (@feeds) {
>>   		my $installed =3D (-f "feeds/$feed->[1].index");
>> @@ -870,6 +907,10 @@ Commands:
>>   	    -i :           Recreate the index only. No feed update from repos=
itory is performed.
>>   	    -f :           Force updating feeds even if there are changed, un=
committed files.
>>   =

>> +	setup [options] <type,name,link> <type,name,link> ...: generate feeds.=
conf
>> +	Options:
>> +	    -b :           Use feeds.conf.default as base for new feeds.conf.
>> +
>>   	clean:             Remove downloaded/generated files.
>>   =

>>   EOF
>> @@ -883,6 +924,7 @@ my %commands =3D (
>>   	'search' =3D> \&search,
>>   	'uninstall' =3D> \&uninstall,
>>   	'feed_config' =3D> \&feed_config,
>> +	'setup' =3D> \&setup,
>>   	'clean' =3D> sub {
>>   		system("rm -rf ./feeds ./package/feeds");
>>   	}
>> -- =

>> 2.20.1
>>
>>
>> _______________________________________________
>> openwrt-devel mailing list
>> openwrt-devel@lists.openwrt.org
>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>>
>> _______________________________________________
>> openwrt-devel mailing list
>> openwrt-devel@lists.openwrt.org
>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
